enum PokemonFilters {
  all('All Pokéman'),
  favourites('Favourites');

  const PokemonFilters(this.filterName);
  final String filterName;
}
