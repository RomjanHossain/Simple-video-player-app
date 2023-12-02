// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';


part 'video_response_result_entity.freezed.dart';
part 'video_response_result_entity.g.dart';

@freezed
class VideoResponseResultEntity with _$VideoResponseResultEntity {
  const factory VideoResponseResultEntity({
    required String? thumbnail,
    required int? id,
    required String? title,
    required String? date_and_time,
    required String? slug,
    required String? created_at,
    required String? manifest,
    required int? live_status,
    required String? live_manifest,
    required bool? is_live,
    required String? channel_image,
    required String? channel_name,
    required String? channel_username,
    required bool? is_verified,
    required String? channel_slug,
    required String? channel_subscriber,
    required int? channel_id,
    required String? type,
    required String? viewers,
    required String? duration,
  }) = _VideoResponseResultEntity;

  factory VideoResponseResultEntity.fromJson(Map<String, Object?> json) =>
      _$VideoResponseResultEntityFromJson(json);
}
