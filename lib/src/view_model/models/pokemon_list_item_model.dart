class PokemonListItemModel {
  final String name;
  final String? imageUrl;
  final String pokemonUrl;
  final bool isFavourite;
  PokemonListItemModel({
    required this.name,
    required this.imageUrl,
    required this.pokemonUrl,
    required this.isFavourite,
  });
}
