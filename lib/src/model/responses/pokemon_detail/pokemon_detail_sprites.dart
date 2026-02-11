import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail.dart';

part 'pokemon_detail_sprites.g.dart';

@JsonSerializable()
class Species {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "url")
  String url;

  Species({required this.name, required this.url});

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);

  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}

@JsonSerializable()
class GenerationV {
  @JsonKey(name: "black-white")
  Sprites blackWhite;

  GenerationV({required this.blackWhite});

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationVToJson(this);
}

@JsonSerializable()
class GenerationIv {
  @JsonKey(name: "diamond-pearl")
  Sprites diamondPearl;
  @JsonKey(name: "heartgold-soulsilver")
  Sprites heartgoldSoulsilver;
  @JsonKey(name: "platinum")
  Sprites platinum;

  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  factory GenerationIv.fromJson(Map<String, dynamic> json) =>
      _$GenerationIvFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIvToJson(this);
}

@JsonSerializable()
class Versions {
  @JsonKey(name: "generation-i")
  GenerationI generationI;
  @JsonKey(name: "generation-ii")
  GenerationIi generationIi;
  @JsonKey(name: "generation-iii")
  GenerationIii generationIii;
  @JsonKey(name: "generation-iv")
  GenerationIv generationIv;
  @JsonKey(name: "generation-ix")
  GenerationIx generationIx;
  @JsonKey(name: "generation-v")
  GenerationV generationV;
  @JsonKey(name: "generation-vi")
  Map<String, Home> generationVi;
  @JsonKey(name: "generation-vii")
  GenerationVii generationVii;
  @JsonKey(name: "generation-viii")
  GenerationViii generationViii;

  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationIx,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);

  Map<String, dynamic> toJson() => _$VersionsToJson(this);
}

@JsonSerializable()
class Other {
  @JsonKey(name: "dream_world")
  DreamWorld dreamWorld;
  @JsonKey(name: "home")
  Home home;
  @JsonKey(name: "official-artwork")
  OfficialArtwork officialArtwork;
  @JsonKey(name: "showdown")
  Sprites showdown;

  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
    required this.showdown,
  });

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable()
class Sprites {
  @JsonKey(name: "back_default")
  String backDefault;
  @JsonKey(name: "back_female")
  dynamic backFemale;
  @JsonKey(name: "back_shiny")
  String backShiny;
  @JsonKey(name: "back_shiny_female")
  dynamic backShinyFemale;
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_female")
  dynamic frontFemale;
  @JsonKey(name: "front_shiny")
  String frontShiny;
  @JsonKey(name: "front_shiny_female")
  dynamic frontShinyFemale;
  @JsonKey(name: "other")
  Other? other;
  @JsonKey(name: "versions")
  Versions? versions;
  @JsonKey(name: "animated")
  Sprites? animated;

  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);

  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable()
class GenerationI {
  @JsonKey(name: "red-blue")
  RedBlue redBlue;
  @JsonKey(name: "yellow")
  RedBlue yellow;

  GenerationI({required this.redBlue, required this.yellow});

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIToJson(this);
}

@JsonSerializable()
class GenerationIii {
  @JsonKey(name: "emerald")
  OfficialArtwork emerald;
  @JsonKey(name: "firered-leafgreen")
  Gold fireredLeafgreen;
  @JsonKey(name: "ruby-sapphire")
  Gold rubySapphire;

  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  factory GenerationIii.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIiiToJson(this);
}

@JsonSerializable()
class GenerationIx {
  @JsonKey(name: "scarlet-violet")
  DreamWorld scarletViolet;

  GenerationIx({required this.scarletViolet});

  factory GenerationIx.fromJson(Map<String, dynamic> json) =>
      _$GenerationIxFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIxToJson(this);
}

@JsonSerializable()
class DreamWorld {
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_female")
  dynamic frontFemale;

  DreamWorld({required this.frontDefault, required this.frontFemale});

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);

  Map<String, dynamic> toJson() => _$DreamWorldToJson(this);
}

@JsonSerializable()
class GenerationIi {
  @JsonKey(name: "crystal")
  Crystal crystal;
  @JsonKey(name: "gold")
  Gold gold;
  @JsonKey(name: "silver")
  Gold silver;

  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  factory GenerationIi.fromJson(Map<String, dynamic> json) =>
      _$GenerationIiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationIiToJson(this);
}

@JsonSerializable()
class OfficialArtwork {
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_shiny")
  String frontShiny;

  OfficialArtwork({required this.frontDefault, required this.frontShiny});

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);

  Map<String, dynamic> toJson() => _$OfficialArtworkToJson(this);
}

@JsonSerializable()
class GenerationVii {
  @JsonKey(name: "icons")
  DreamWorld icons;
  @JsonKey(name: "ultra-sun-ultra-moon")
  Home ultraSunUltraMoon;

  GenerationVii({required this.icons, required this.ultraSunUltraMoon});

  factory GenerationVii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationViiToJson(this);
}

@JsonSerializable()
class GenerationViii {
  @JsonKey(name: "brilliant-diamond-shining-pearl")
  DreamWorld brilliantDiamondShiningPearl;
  @JsonKey(name: "icons")
  DreamWorld icons;

  GenerationViii({
    required this.brilliantDiamondShiningPearl,
    required this.icons,
  });

  factory GenerationViii.fromJson(Map<String, dynamic> json) =>
      _$GenerationViiiFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationViiiToJson(this);
}

@JsonSerializable()
class Home {
  @JsonKey(name: "front_default")
  String frontDefault;
  @JsonKey(name: "front_female")
  dynamic frontFemale;
  @JsonKey(name: "front_shiny")
  String frontShiny;
  @JsonKey(name: "front_shiny_female")
  dynamic frontShinyFemale;

  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
