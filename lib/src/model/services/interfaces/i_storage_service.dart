abstract class IStorageService {
  Future<List<String>> fetchFavoritePokemons();

  Future<void> addFavoritePokemon(String pokemonName);

  Future<void> removeFavoritePokemon(String pokemonName);
}
