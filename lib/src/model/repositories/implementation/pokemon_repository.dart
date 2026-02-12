import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/src/model/clients/interfaces/i_pokemon_client.dart';
import 'package:pokedex_app/src/model/failures/api_failure.dart';
import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/model/repositories/interfaces/i_pokemon_repository.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_detail_model.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_list_item_model.dart';

@LazySingleton(as: IPokemonRepository)
class PokemonRepository implements IPokemonRepository {
  PokemonRepository(this._pokemonClient);

  final IPokemonClient _pokemonClient;

  @override
  Future<Either<CoreFailure, List<PokemonListItemModel>>>
  getAllPokemon() async {
    try {
      final response = await _pokemonClient.fetchPokemons();
      final models = response.results.map((r) {
        final id = r.url.split('/').where((e) => e.isNotEmpty).last;
        final imageUrl =
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
        return PokemonListItemModel(
          name: r.name,
          pokemonUrl: r.url,
          imageUrl: imageUrl,
        );
      }).toList();
      return right(models);
    } on DioException catch (e) {
      return left(ApiFailure(e.message ?? 'Request failed'));
    } catch (e) {
      return left(ApiFailure(e.toString()));
    }
  }

  @override
  Future<Either<CoreFailure, PokemonDetailModel>> getPokemonDetail({
    required String url,
  }) async {
    try {
      final res = await _pokemonClient.fetchPokemonDetailObject(url);

      String description = '';
      try {
        description = await _pokemonClient.getSpeciesFlavorText(res.species.url);
      } catch (_) {}

      final imageUrl = res.sprites.other?.dreamWorld.frontDefault ??
          res.sprites.other?.officialArtwork.frontDefault;

      final types = res.types.map<String?>((t) => t.type.name).toList();
      final stats = res.stats
          .map(
            (s) => PokemonStats(
              statDesc: s.stat.name,
              statistic: s.baseStat,
            ),
          )
          .toList();

      final model = PokemonDetailModel(
        type: types,
        stats: stats,
        imageUrl: imageUrl,
        description: description,
      );
      return right(model);
    } on DioException catch (e) {
      return left(ApiFailure(e.message ?? 'Request failed'));
    } catch (e) {
      return left(ApiFailure(e.toString()));
    }
  }
}
