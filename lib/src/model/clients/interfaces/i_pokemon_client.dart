import 'package:pokedex_app/src/model/responses/all_pokemon_response.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail.dart'
    as pokemon_detail_response;

abstract class IPokemonClient {
  Future<AllPokemon> fetchPokemons({int limit = 20, int offset = 0});
  Future<pokemon_detail_response.PokemonDetail> fetchPokemonDetailObject(
    String url,
  );
  Future<String> getSpeciesFlavorText(String speciesUrl);
}
