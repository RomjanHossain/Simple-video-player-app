// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_video_player_app/domain/entities/video_response_link_entity.dart';
import 'package:simple_video_player_app/domain/entities/video_response_result_entity.dart';

part 'video_response_entity.freezed.dart';
part 'video_response_entity.g.dart';

@freezed
class VideoResponseEntity with _$VideoResponseEntity {
  const factory VideoResponseEntity({
    required VideoResponseLinkEntity links,
    required int total,
    required int page,
    required int page_size,
    required List<VideoResponseResultEntity> results,
  }) = _VideoResponseEntity;

  factory VideoResponseEntity.fromJson(Map<String, Object?> json) =>
      _$VideoResponseEntityFromJson(json);
}
