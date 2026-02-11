import 'package:json_annotation/json_annotation.dart';

part 'all_pokemon_response.g.dart';

@JsonSerializable()
class AllPokemon {
  @JsonKey(name: "count")
  int count;
  @JsonKey(name: "next")
  String next;
  @JsonKey(name: "previous")
  dynamic previous;
  @JsonKey(name: "results")
  List<Result> results;

  AllPokemon({
    required this.count,

    required this.next,
    required this.previous,
    required this.results,
  });

  factory AllPokemon.fromJson(Map<String, dynamic> json) =>
      _$AllPokemonFromJson(json);

  Map<String, dynamic> toJson() => _$AllPokemonToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "url")
  String url;

  Result({required this.name, required this.url});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
