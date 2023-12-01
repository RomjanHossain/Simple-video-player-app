// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponseEntity _$VideoResponseEntityFromJson(Map<String, dynamic> json) {
  return _VideoResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoResponseEntity {
  VideoResponseLinkEntity get links => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get page_size => throw _privateConstructorUsedError;
  List<VideoResponseResultEntity> get result =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseEntityCopyWith<VideoResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseEntityCopyWith<$Res> {
  factory $VideoResponseEntityCopyWith(
          VideoResponseEntity value, $Res Function(VideoResponseEntity) then) =
      _$VideoResponseEntityCopyWithImpl<$Res, VideoResponseEntity>;
  @useResult
  $Res call(
      {VideoResponseLinkEntity links,
      int total,
      int page,
      int page_size,
      List<VideoResponseResultEntity> result});

  $VideoResponseLinkEntityCopyWith<$Res> get links;
}

/// @nodoc
class _$VideoResponseEntityCopyWithImpl<$Res, $Val extends VideoResponseEntity>
    implements $VideoResponseEntityCopyWith<$Res> {
  _$VideoResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? total = null,
    Object? page = null,
    Object? page_size = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as VideoResponseLinkEntity,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      page_size: null == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<VideoResponseResultEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoResponseLinkEntityCopyWith<$Res> get links {
    return $VideoResponseLinkEntityCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoResponseEntityImplCopyWith<$Res>
    implements $VideoResponseEntityCopyWith<$Res> {
  factory _$$VideoResponseEntityImplCopyWith(_$VideoResponseEntityImpl value,
          $Res Function(_$VideoResponseEntityImpl) then) =
      __$$VideoResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoResponseLinkEntity links,
      int total,
      int page,
      int page_size,
      List<VideoResponseResultEntity> result});

  @override
  $VideoResponseLinkEntityCopyWith<$Res> get links;
}

/// @nodoc
class __$$VideoResponseEntityImplCopyWithImpl<$Res>
    extends _$VideoResponseEntityCopyWithImpl<$Res, _$VideoResponseEntityImpl>
    implements _$$VideoResponseEntityImplCopyWith<$Res> {
  __$$VideoResponseEntityImplCopyWithImpl(_$VideoResponseEntityImpl _value,
      $Res Function(_$VideoResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? total = null,
    Object? page = null,
    Object? page_size = null,
    Object? result = null,
  }) {
    return _then(_$VideoResponseEntityImpl(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as VideoResponseLinkEntity,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      page_size: null == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<VideoResponseResultEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseEntityImpl implements _VideoResponseEntity {
  const _$VideoResponseEntityImpl(
      {required this.links,
      required this.total,
      required this.page,
      required this.page_size,
      required final List<VideoResponseResultEntity> result})
      : _result = result;

  factory _$VideoResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseEntityImplFromJson(json);

  @override
  final VideoResponseLinkEntity links;
  @override
  final int total;
  @override
  final int page;
  @override
  final int page_size;
  final List<VideoResponseResultEntity> _result;
  @override
  List<VideoResponseResultEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'VideoResponseEntity(links: $links, total: $total, page: $page, page_size: $page_size, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseEntityImpl &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.page_size, page_size) ||
                other.page_size == page_size) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links, total, page, page_size,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseEntityImplCopyWith<_$VideoResponseEntityImpl> get copyWith =>
      __$$VideoResponseEntityImplCopyWithImpl<_$VideoResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _VideoResponseEntity implements VideoResponseEntity {
  const factory _VideoResponseEntity(
          {required final VideoResponseLinkEntity links,
          required final int total,
          required final int page,
          required final int page_size,
          required final List<VideoResponseResultEntity> result}) =
      _$VideoResponseEntityImpl;

  factory _VideoResponseEntity.fromJson(Map<String, dynamic> json) =
      _$VideoResponseEntityImpl.fromJson;

  @override
  VideoResponseLinkEntity get links;
  @override
  int get total;
  @override
  int get page;
  @override
  int get page_size;
  @override
  List<VideoResponseResultEntity> get result;
  @override
  @JsonKey(ignore: true)
  _$$VideoResponseEntityImplCopyWith<_$VideoResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
