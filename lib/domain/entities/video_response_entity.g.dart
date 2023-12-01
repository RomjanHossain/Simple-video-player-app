// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResponseEntityImpl _$$VideoResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoResponseEntityImpl(
      links: VideoResponseLinkEntity.fromJson(
          json['links'] as Map<String, dynamic>),
      total: json['total'] as int,
      page: json['page'] as int,
      page_size: json['page_size'] as int,
      result: (json['result'] as List<dynamic>)
          .map((e) =>
              VideoResponseResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoResponseEntityImplToJson(
        _$VideoResponseEntityImpl instance) =>
    <String, dynamic>{
      'links': instance.links,
      'total': instance.total,
      'page': instance.page,
      'page_size': instance.page_size,
      'result': instance.result,
    };
