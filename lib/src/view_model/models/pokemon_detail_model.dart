class PokemonDetailModel {
  final List<String?> type;
  final List<PokemonStats> stats;
  final String? imageUrl;
  final String description;

  PokemonDetailModel({
    required this.type,
    required this.stats,
    required this.imageUrl,
    required this.description,
  });
}

class PokemonStats {
  final String statDesc;
  final int statistic;

  PokemonStats({required this.statDesc, required this.statistic});
}
