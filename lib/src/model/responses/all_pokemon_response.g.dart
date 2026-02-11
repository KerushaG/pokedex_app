// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPokemon _$AllPokemonFromJson(Map<String, dynamic> json) => AllPokemon(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String,
  previous: json['previous'],
  results:
      (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$AllPokemonToJson(AllPokemon instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) =>
    Result(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};
