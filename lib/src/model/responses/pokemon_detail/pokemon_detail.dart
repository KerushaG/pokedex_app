import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail_moves.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail_sprites.dart';

part 'pokemon_detail.g.dart';

@JsonSerializable()
class PokemonDetail {
  @JsonKey(name: "abilities")
  List<Ability> abilities;
  @JsonKey(name: "base_experience")
  int baseExperience;
  @JsonKey(name: "cries")
  Cries cries;
  @JsonKey(name: "forms")
  List<Species> forms;
  @JsonKey(name: "game_indices")
  List<GameIndex> gameIndices;
  @JsonKey(name: "height")
  int height;
  @JsonKey(name: "held_items")
  List<dynamic> heldItems;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "is_default")
  bool isDefault;
  @JsonKey(name: "location_area_encounters")
  String locationAreaEncounters;
  @JsonKey(name: "moves")
  List<Move> moves;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "order")
  int order;
  @JsonKey(name: "past_abilities")
  List<PastAbility> pastAbilities;
  @JsonKey(name: "past_stats")
  List<PastStat> pastStats;
  @JsonKey(name: "past_types")
  List<dynamic> pastTypes;
  @JsonKey(name: "species")
  Species species;
  @JsonKey(name: "sprites")
  Sprites sprites;
  @JsonKey(name: "stats")
  List<Stat> stats;
  @JsonKey(name: "types")
  List<Type> types;
  @JsonKey(name: "weight")
  int weight;

  PokemonDetail({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastStats,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDetailToJson(this);
}

@JsonSerializable()
class Ability {
  @JsonKey(name: "ability")
  Species? ability;
  @JsonKey(name: "is_hidden")
  bool isHidden;
  @JsonKey(name: "slot")
  int slot;

  Ability({required this.ability, required this.isHidden, required this.slot});

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable()
class Cries {
  @JsonKey(name: "latest")
  String latest;
  @JsonKey(name: "legacy")
  String legacy;

  Cries({required this.latest, required this.legacy});

  factory Cries.fromJson(Map<String, dynamic> json) => _$CriesFromJson(json);

  Map<String, dynamic> toJson() => _$CriesToJson(this);
}

@JsonSerializable()
class GameIndex {
  @JsonKey(name: "game_index")
  int gameIndex;
  @JsonKey(name: "version")
  Species version;

  GameIndex({required this.gameIndex, required this.version});

  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);

  Map<String, dynamic> toJson() => _$GameIndexToJson(this);
}

@JsonSerializable()
class PastAbility {
  @JsonKey(name: "abilities")
  List<Ability> abilities;
  @JsonKey(name: "generation")
  Species generation;

  PastAbility({required this.abilities, required this.generation});

  factory PastAbility.fromJson(Map<String, dynamic> json) =>
      _$PastAbilityFromJson(json);

  Map<String, dynamic> toJson() => _$PastAbilityToJson(this);
}

@JsonSerializable()
class PastStat {
  @JsonKey(name: "generation")
  Species generation;
  @JsonKey(name: "stats")
  List<Stat> stats;

  PastStat({required this.generation, required this.stats});

  factory PastStat.fromJson(Map<String, dynamic> json) =>
      _$PastStatFromJson(json);

  Map<String, dynamic> toJson() => _$PastStatToJson(this);
}

@JsonSerializable()
class Stat {
  @JsonKey(name: "base_stat")
  int baseStat;
  @JsonKey(name: "effort")
  int effort;
  @JsonKey(name: "stat")
  Species stat;

  Stat({required this.baseStat, required this.effort, required this.stat});

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  Map<String, dynamic> toJson() => _$StatToJson(this);
}

@JsonSerializable()
class Type {
  @JsonKey(name: "slot")
  int slot;
  @JsonKey(name: "type")
  Species type;

  Type({required this.slot, required this.type});

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}

@JsonSerializable()
class RedBlue {
  @JsonKey(name: "back_default")
  String backDefault;
  @JsonKey(name: "back_gray")
  String backGray;
  @JsonKey(name: "back_transparent")
  String backTransparent;
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_gray")
  String frontGray;
  @JsonKey(name: "front_transparent")
  String frontTransparent;

  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);

  Map<String, dynamic> toJson() => _$RedBlueToJson(this);
}

@JsonSerializable()
class Crystal {
  @JsonKey(name: "back_default")
  String backDefault;
  @JsonKey(name: "back_shiny")
  String backShiny;
  @JsonKey(name: "back_shiny_transparent")
  String backShinyTransparent;
  @JsonKey(name: "back_transparent")
  String backTransparent;
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_shiny")
  String frontShiny;
  @JsonKey(name: "front_shiny_transparent")
  String frontShinyTransparent;
  @JsonKey(name: "front_transparent")
  String frontTransparent;

  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);

  Map<String, dynamic> toJson() => _$CrystalToJson(this);
}

@JsonSerializable()
class Gold {
  @JsonKey(name: "back_default")
  String backDefault;
  @JsonKey(name: "back_shiny")
  String backShiny;
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_shiny")
  String frontShiny;
  @JsonKey(name: "front_transparent")
  String? frontTransparent;

  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);

  Map<String, dynamic> toJson() => _$GoldToJson(this);
}
