import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex_app/src/model/responses/pokemon_detail/pokemon_detail_sprites.dart';

part 'pokemon_detail_moves.g.dart';

@JsonSerializable()
class Move {
  @JsonKey(name: "move")
  Species move;
  @JsonKey(name: "version_group_details")
  List<VersionGroupDetail> versionGroupDetails;

  Move({required this.move, required this.versionGroupDetails});

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

  Map<String, dynamic> toJson() => _$MoveToJson(this);
}

@JsonSerializable()
class VersionGroupDetail {
  @JsonKey(name: "level_learned_at")
  int levelLearnedAt;
  @JsonKey(name: "move_learn_method")
  Species moveLearnMethod;
  @JsonKey(name: "order")
  int? order;
  @JsonKey(name: "version_group")
  Species versionGroup;

  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.order,
    required this.versionGroup,
  });

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VersionGroupDetailToJson(this);
}
