// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) =>
    PokemonDetail(
      abilities:
          (json['abilities'] as List<dynamic>)
              .map((e) => Ability.fromJson(e as Map<String, dynamic>))
              .toList(),
      baseExperience: (json['base_experience'] as num).toInt(),
      cries: Cries.fromJson(json['cries'] as Map<String, dynamic>),
      forms:
          (json['forms'] as List<dynamic>)
              .map((e) => Species.fromJson(e as Map<String, dynamic>))
              .toList(),
      gameIndices:
          (json['game_indices'] as List<dynamic>)
              .map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
              .toList(),
      height: (json['height'] as num).toInt(),
      heldItems: json['held_items'] as List<dynamic>,
      id: (json['id'] as num).toInt(),
      isDefault: json['is_default'] as bool,
      locationAreaEncounters: json['location_area_encounters'] as String,
      moves:
          (json['moves'] as List<dynamic>)
              .map((e) => Move.fromJson(e as Map<String, dynamic>))
              .toList(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      pastAbilities:
          (json['past_abilities'] as List<dynamic>)
              .map((e) => PastAbility.fromJson(e as Map<String, dynamic>))
              .toList(),
      pastStats:
          (json['past_stats'] as List<dynamic>)
              .map((e) => PastStat.fromJson(e as Map<String, dynamic>))
              .toList(),
      pastTypes: json['past_types'] as List<dynamic>,
      species: Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats:
          (json['stats'] as List<dynamic>)
              .map((e) => Stat.fromJson(e as Map<String, dynamic>))
              .toList(),
      types:
          (json['types'] as List<dynamic>)
              .map((e) => Type.fromJson(e as Map<String, dynamic>))
              .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonDetailToJson(PokemonDetail instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'cries': instance.cries,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'past_abilities': instance.pastAbilities,
      'past_stats': instance.pastStats,
      'past_types': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
  ability:
      json['ability'] == null
          ? null
          : Species.fromJson(json['ability'] as Map<String, dynamic>),
  isHidden: json['is_hidden'] as bool,
  slot: (json['slot'] as num).toInt(),
);

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
  'ability': instance.ability,
  'is_hidden': instance.isHidden,
  'slot': instance.slot,
};

Cries _$CriesFromJson(Map<String, dynamic> json) =>
    Cries(latest: json['latest'] as String, legacy: json['legacy'] as String);

Map<String, dynamic> _$CriesToJson(Cries instance) => <String, dynamic>{
  'latest': instance.latest,
  'legacy': instance.legacy,
};

GameIndex _$GameIndexFromJson(Map<String, dynamic> json) => GameIndex(
  gameIndex: (json['game_index'] as num).toInt(),
  version: Species.fromJson(json['version'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameIndexToJson(GameIndex instance) => <String, dynamic>{
  'game_index': instance.gameIndex,
  'version': instance.version,
};

PastAbility _$PastAbilityFromJson(Map<String, dynamic> json) => PastAbility(
  abilities:
      (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
  generation: Species.fromJson(json['generation'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PastAbilityToJson(PastAbility instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'generation': instance.generation,
    };

PastStat _$PastStatFromJson(Map<String, dynamic> json) => PastStat(
  generation: Species.fromJson(json['generation'] as Map<String, dynamic>),
  stats:
      (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PastStatToJson(PastStat instance) => <String, dynamic>{
  'generation': instance.generation,
  'stats': instance.stats,
};

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
  baseStat: (json['base_stat'] as num).toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: Species.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
  'base_stat': instance.baseStat,
  'effort': instance.effort,
  'stat': instance.stat,
};

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
  slot: (json['slot'] as num).toInt(),
  type: Species.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
  'slot': instance.slot,
  'type': instance.type,
};

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) => RedBlue(
  backDefault: json['back_default'] as String,
  backGray: json['back_gray'] as String,
  backTransparent: json['back_transparent'] as String,
  frontDefault: json['front_default'] as String,
  frontGray: json['front_gray'] as String,
  frontTransparent: json['front_transparent'] as String,
);

Map<String, dynamic> _$RedBlueToJson(RedBlue instance) => <String, dynamic>{
  'back_default': instance.backDefault,
  'back_gray': instance.backGray,
  'back_transparent': instance.backTransparent,
  'front_default': instance.frontDefault,
  'front_gray': instance.frontGray,
  'front_transparent': instance.frontTransparent,
};

Crystal _$CrystalFromJson(Map<String, dynamic> json) => Crystal(
  backDefault: json['back_default'] as String,
  backShiny: json['back_shiny'] as String,
  backShinyTransparent: json['back_shiny_transparent'] as String,
  backTransparent: json['back_transparent'] as String,
  frontDefault: json['front_default'] as String,
  frontShiny: json['front_shiny'] as String,
  frontShinyTransparent: json['front_shiny_transparent'] as String,
  frontTransparent: json['front_transparent'] as String,
);

Map<String, dynamic> _$CrystalToJson(Crystal instance) => <String, dynamic>{
  'back_default': instance.backDefault,
  'back_shiny': instance.backShiny,
  'back_shiny_transparent': instance.backShinyTransparent,
  'back_transparent': instance.backTransparent,
  'front_default': instance.frontDefault,
  'front_shiny': instance.frontShiny,
  'front_shiny_transparent': instance.frontShinyTransparent,
  'front_transparent': instance.frontTransparent,
};

Gold _$GoldFromJson(Map<String, dynamic> json) => Gold(
  backDefault: json['back_default'] as String,
  backShiny: json['back_shiny'] as String,
  frontDefault: json['front_default'] as String,
  frontShiny: json['front_shiny'] as String,
  frontTransparent: json['front_transparent'] as String?,
);

Map<String, dynamic> _$GoldToJson(Gold instance) => <String, dynamic>{
  'back_default': instance.backDefault,
  'back_shiny': instance.backShiny,
  'front_default': instance.frontDefault,
  'front_shiny': instance.frontShiny,
  'front_transparent': instance.frontTransparent,
};
