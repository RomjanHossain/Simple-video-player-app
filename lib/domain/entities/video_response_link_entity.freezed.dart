// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response_link_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponseLinkEntity _$VideoResponseLinkEntityFromJson(
    Map<String, dynamic> json) {
  return _VideoResponseLinkEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoResponseLinkEntity {
  int? get next => throw _privateConstructorUsedError;
  int? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseLinkEntityCopyWith<VideoResponseLinkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseLinkEntityCopyWith<$Res> {
  factory $VideoResponseLinkEntityCopyWith(VideoResponseLinkEntity value,
          $Res Function(VideoResponseLinkEntity) then) =
      _$VideoResponseLinkEntityCopyWithImpl<$Res, VideoResponseLinkEntity>;
  @useResult
  $Res call({int? next, int? previous});
}

/// @nodoc
class _$VideoResponseLinkEntityCopyWithImpl<$Res,
        $Val extends VideoResponseLinkEntity>
    implements $VideoResponseLinkEntityCopyWith<$Res> {
  _$VideoResponseLinkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResponseLinkEntityImplCopyWith<$Res>
    implements $VideoResponseLinkEntityCopyWith<$Res> {
  factory _$$VideoResponseLinkEntityImplCopyWith(
          _$VideoResponseLinkEntityImpl value,
          $Res Function(_$VideoResponseLinkEntityImpl) then) =
      __$$VideoResponseLinkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? next, int? previous});
}

/// @nodoc
class __$$VideoResponseLinkEntityImplCopyWithImpl<$Res>
    extends _$VideoResponseLinkEntityCopyWithImpl<$Res,
        _$VideoResponseLinkEntityImpl>
    implements _$$VideoResponseLinkEntityImplCopyWith<$Res> {
  __$$VideoResponseLinkEntityImplCopyWithImpl(
      _$VideoResponseLinkEntityImpl _value,
      $Res Function(_$VideoResponseLinkEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$VideoResponseLinkEntityImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseLinkEntityImpl implements _VideoResponseLinkEntity {
  const _$VideoResponseLinkEntityImpl(
      {required this.next, required this.previous});

  factory _$VideoResponseLinkEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseLinkEntityImplFromJson(json);

  @override
  final int? next;
  @override
  final int? previous;

  @override
  String toString() {
    return 'VideoResponseLinkEntity(next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseLinkEntityImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseLinkEntityImplCopyWith<_$VideoResponseLinkEntityImpl>
      get copyWith => __$$VideoResponseLinkEntityImplCopyWithImpl<
          _$VideoResponseLinkEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseLinkEntityImplToJson(
      this,
    );
  }
}

abstract class _VideoResponseLinkEntity implements VideoResponseLinkEntity {
  const factory _VideoResponseLinkEntity(
      {required final int? next,
      required final int? previous}) = _$VideoResponseLinkEntityImpl;

  factory _VideoResponseLinkEntity.fromJson(Map<String, dynamic> json) =
      _$VideoResponseLinkEntityImpl.fromJson;

  @override
  int? get next;
  @override
  int? get previous;
  @override
  @JsonKey(ignore: true)
  _$$VideoResponseLinkEntityImplCopyWith<_$VideoResponseLinkEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
