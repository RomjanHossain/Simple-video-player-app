import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_response_link_entity.freezed.dart';
part 'video_response_link_entity.g.dart';

@freezed
class VideoResponseLinkEntity with _$VideoResponseLinkEntity {
  const factory VideoResponseLinkEntity({
    required int? next,
    required int? previous,
  }) = _VideoResponseLinkEntity;

  factory VideoResponseLinkEntity.fromJson(Map<String, Object?> json) =>
      _$VideoResponseLinkEntityFromJson(json);
}
