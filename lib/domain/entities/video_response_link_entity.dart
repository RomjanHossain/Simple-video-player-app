import 'package:freezed_annotation/freezed_annotation.dart';


part 'video_response_link_entity.freezed.dart';
part 'video_response_link_entity.g.dart';

@freezed
class VideoResponseLinkEntity with _$VideoResponseLinkEntity {
  const factory VideoResponseLinkEntity({
    required String? next,
    required String? previous,
  }) = _VideoResponseLinkEntity;

  factory VideoResponseLinkEntity.fromJson(Map<String, Object?> json) =>
      _$VideoResponseLinkEntityFromJson(json);
}
