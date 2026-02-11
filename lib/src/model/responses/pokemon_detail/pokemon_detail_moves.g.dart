// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_moves.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
  move: Species.fromJson(json['move'] as Map<String, dynamic>),
  versionGroupDetails:
      (json['version_group_details'] as List<dynamic>)
          .map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
  'move': instance.move,
  'version_group_details': instance.versionGroupDetails,
};

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) =>
    VersionGroupDetail(
      levelLearnedAt: (json['level_learned_at'] as num).toInt(),
      moveLearnMethod: Species.fromJson(
        json['move_learn_method'] as Map<String, dynamic>,
      ),
      order: (json['order'] as num?)?.toInt(),
      versionGroup: Species.fromJson(
        json['version_group'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$VersionGroupDetailToJson(VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethod,
      'order': instance.order,
      'version_group': instance.versionGroup,
    };
