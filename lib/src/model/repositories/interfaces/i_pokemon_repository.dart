import 'package:pokedex_app/src/model/failures/core_failure.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_detail_model.dart';
import 'package:pokedex_app/src/view_model/models/pokemon_list_item_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPokemonRepository {
  Future<Either<CoreFailure, List<PokemonListItemModel>>> getAllPokemon();

  Future<Either<CoreFailure, PokemonDetailModel>> getPokemonDetail({
    required String url,
  });
}
