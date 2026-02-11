// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Species _$SpeciesFromJson(Map<String, dynamic> json) =>
    Species(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) => GenerationV(
  blackWhite: Sprites.fromJson(json['black-white'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationVToJson(GenerationV instance) =>
    <String, dynamic>{'black-white': instance.blackWhite};

GenerationIv _$GenerationIvFromJson(Map<String, dynamic> json) => GenerationIv(
  diamondPearl: Sprites.fromJson(json['diamond-pearl'] as Map<String, dynamic>),
  heartgoldSoulsilver: Sprites.fromJson(
    json['heartgold-soulsilver'] as Map<String, dynamic>,
  ),
  platinum: Sprites.fromJson(json['platinum'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationIvToJson(GenerationIv instance) =>
    <String, dynamic>{
      'diamond-pearl': instance.diamondPearl,
      'heartgold-soulsilver': instance.heartgoldSoulsilver,
      'platinum': instance.platinum,
    };

Versions _$VersionsFromJson(Map<String, dynamic> json) => Versions(
  generationI: GenerationI.fromJson(
    json['generation-i'] as Map<String, dynamic>,
  ),
  generationIi: GenerationIi.fromJson(
    json['generation-ii'] as Map<String, dynamic>,
  ),
  generationIii: GenerationIii.fromJson(
    json['generation-iii'] as Map<String, dynamic>,
  ),
  generationIv: GenerationIv.fromJson(
    json['generation-iv'] as Map<String, dynamic>,
  ),
  generationIx: GenerationIx.fromJson(
    json['generation-ix'] as Map<String, dynamic>,
  ),
  generationV: GenerationV.fromJson(
    json['generation-v'] as Map<String, dynamic>,
  ),
  generationVi: (json['generation-vi'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Home.fromJson(e as Map<String, dynamic>)),
  ),
  generationVii: GenerationVii.fromJson(
    json['generation-vii'] as Map<String, dynamic>,
  ),
  generationViii: GenerationViii.fromJson(
    json['generation-viii'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$VersionsToJson(Versions instance) => <String, dynamic>{
  'generation-i': instance.generationI,
  'generation-ii': instance.generationIi,
  'generation-iii': instance.generationIii,
  'generation-iv': instance.generationIv,
  'generation-ix': instance.generationIx,
  'generation-v': instance.generationV,
  'generation-vi': instance.generationVi,
  'generation-vii': instance.generationVii,
  'generation-viii': instance.generationViii,
};

Other _$OtherFromJson(Map<String, dynamic> json) => Other(
  dreamWorld: DreamWorld.fromJson(json['dream_world'] as Map<String, dynamic>),
  home: Home.fromJson(json['home'] as Map<String, dynamic>),
  officialArtwork: OfficialArtwork.fromJson(
    json['official-artwork'] as Map<String, dynamic>,
  ),
  showdown: Sprites.fromJson(json['showdown'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
  'dream_world': instance.dreamWorld,
  'home': instance.home,
  'official-artwork': instance.officialArtwork,
  'showdown': instance.showdown,
};

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
  backDefault: json['back_default'] as String,
  backFemale: json['back_female'],
  backShiny: json['back_shiny'] as String,
  backShinyFemale: json['back_shiny_female'],
  frontDefault: json['front_default'] as String,
  frontFemale: json['front_female'],
  frontShiny: json['front_shiny'] as String,
  frontShinyFemale: json['front_shiny_female'],
  other:
      json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
  versions:
      json['versions'] == null
          ? null
          : Versions.fromJson(json['versions'] as Map<String, dynamic>),
  animated:
      json['animated'] == null
          ? null
          : Sprites.fromJson(json['animated'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
  'back_default': instance.backDefault,
  'back_female': instance.backFemale,
  'back_shiny': instance.backShiny,
  'back_shiny_female': instance.backShinyFemale,
  'front_default': instance.frontDefault,
  'front_female': instance.frontFemale,
  'front_shiny': instance.frontShiny,
  'front_shiny_female': instance.frontShinyFemale,
  'other': instance.other,
  'versions': instance.versions,
  'animated': instance.animated,
};

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) => GenerationI(
  redBlue: RedBlue.fromJson(json['red-blue'] as Map<String, dynamic>),
  yellow: RedBlue.fromJson(json['yellow'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationIToJson(GenerationI instance) =>
    <String, dynamic>{'red-blue': instance.redBlue, 'yellow': instance.yellow};

GenerationIii _$GenerationIiiFromJson(
  Map<String, dynamic> json,
) => GenerationIii(
  emerald: OfficialArtwork.fromJson(json['emerald'] as Map<String, dynamic>),
  fireredLeafgreen: Gold.fromJson(
    json['firered-leafgreen'] as Map<String, dynamic>,
  ),
  rubySapphire: Gold.fromJson(json['ruby-sapphire'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationIiiToJson(GenerationIii instance) =>
    <String, dynamic>{
      'emerald': instance.emerald,
      'firered-leafgreen': instance.fireredLeafgreen,
      'ruby-sapphire': instance.rubySapphire,
    };

GenerationIx _$GenerationIxFromJson(Map<String, dynamic> json) => GenerationIx(
  scarletViolet: DreamWorld.fromJson(
    json['scarlet-violet'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GenerationIxToJson(GenerationIx instance) =>
    <String, dynamic>{'scarlet-violet': instance.scarletViolet};

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) => DreamWorld(
  frontDefault: json['front_default'] as String,
  frontFemale: json['front_female'],
);

Map<String, dynamic> _$DreamWorldToJson(DreamWorld instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) => GenerationIi(
  crystal: Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
  gold: Gold.fromJson(json['gold'] as Map<String, dynamic>),
  silver: Gold.fromJson(json['silver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GenerationIiToJson(GenerationIi instance) =>
    <String, dynamic>{
      'crystal': instance.crystal,
      'gold': instance.gold,
      'silver': instance.silver,
    };

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) =>
    OfficialArtwork(
      frontDefault: json['front_default'] as String,
      frontShiny: json['front_shiny'] as String,
    );

Map<String, dynamic> _$OfficialArtworkToJson(OfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

GenerationVii _$GenerationViiFromJson(Map<String, dynamic> json) =>
    GenerationVii(
      icons: DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: Home.fromJson(
        json['ultra-sun-ultra-moon'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GenerationViiToJson(GenerationVii instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'ultra-sun-ultra-moon': instance.ultraSunUltraMoon,
    };

GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) =>
    GenerationViii(
      brilliantDiamondShiningPearl: DreamWorld.fromJson(
        json['brilliant-diamond-shining-pearl'] as Map<String, dynamic>,
      ),
      icons: DreamWorld.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationViiiToJson(GenerationViii instance) =>
    <String, dynamic>{
      'brilliant-diamond-shining-pearl': instance.brilliantDiamondShiningPearl,
      'icons': instance.icons,
    };

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
  frontDefault: json['front_default'] as String,
  frontFemale: json['front_female'],
  frontShiny: json['front_shiny'] as String,
  frontShinyFemale: json['front_shiny_female'],
);

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
  'front_default': instance.frontDefault,
  'front_female': instance.frontFemale,
  'front_shiny': instance.frontShiny,
  'front_shiny_female': instance.frontShinyFemale,
};
