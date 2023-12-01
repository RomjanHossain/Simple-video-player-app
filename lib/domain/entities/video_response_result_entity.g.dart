// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResponseResultEntityImpl _$$VideoResponseResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoResponseResultEntityImpl(
      thumbnail: json['thumbnail'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      date_and_time: json['date_and_time'] as String?,
      slug: json['slug'] as String?,
      created_at: json['created_at'] as String?,
      manifest: json['manifest'] as String?,
      live_status: json['live_status'] as int?,
      live_manifest: json['live_manifest'] as String?,
      is_live: json['is_live'] as bool?,
      channel_image: json['channel_image'] as String?,
      channel_name: json['channel_name'] as String?,
      channel_username: json['channel_username'] as String?,
      is_verified: json['is_verified'] as bool?,
      channel_slug: json['channel_slug'] as String?,
      channel_subscriber: json['channel_subscriber'] as String?,
      channel_id: json['channel_id'] as int?,
      type: json['type'] as String?,
      viewers: json['viewers'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$VideoResponseResultEntityImplToJson(
        _$VideoResponseResultEntityImpl instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'title': instance.title,
      'date_and_time': instance.date_and_time,
      'slug': instance.slug,
      'created_at': instance.created_at,
      'manifest': instance.manifest,
      'live_status': instance.live_status,
      'live_manifest': instance.live_manifest,
      'is_live': instance.is_live,
      'channel_image': instance.channel_image,
      'channel_name': instance.channel_name,
      'channel_username': instance.channel_username,
      'is_verified': instance.is_verified,
      'channel_slug': instance.channel_slug,
      'channel_subscriber': instance.channel_subscriber,
      'channel_id': instance.channel_id,
      'type': instance.type,
      'viewers': instance.viewers,
      'duration': instance.duration,
    };
