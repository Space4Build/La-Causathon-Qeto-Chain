// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupons_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponDto _$CouponDtoFromJson(Map<String, dynamic> json) {
  return _CouponDto.fromJson(json);
}

/// @nodoc
mixin _$CouponDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDtoCopyWith<CouponDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDtoCopyWith<$Res> {
  factory $CouponDtoCopyWith(CouponDto value, $Res Function(CouponDto) then) =
      _$CouponDtoCopyWithImpl<$Res, CouponDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double discount,
      String media});
}

/// @nodoc
class _$CouponDtoCopyWithImpl<$Res, $Val extends CouponDto>
    implements $CouponDtoCopyWith<$Res> {
  _$CouponDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? discount = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDtoImplCopyWith<$Res>
    implements $CouponDtoCopyWith<$Res> {
  factory _$$CouponDtoImplCopyWith(
          _$CouponDtoImpl value, $Res Function(_$CouponDtoImpl) then) =
      __$$CouponDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double discount,
      String media});
}

/// @nodoc
class __$$CouponDtoImplCopyWithImpl<$Res>
    extends _$CouponDtoCopyWithImpl<$Res, _$CouponDtoImpl>
    implements _$$CouponDtoImplCopyWith<$Res> {
  __$$CouponDtoImplCopyWithImpl(
      _$CouponDtoImpl _value, $Res Function(_$CouponDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? discount = null,
    Object? media = null,
  }) {
    return _then(_$CouponDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDtoImpl implements _CouponDto {
  const _$CouponDtoImpl(
      {this.id = '',
      required this.name,
      required this.description,
      this.discount = 0.25,
      required this.media});

  factory _$CouponDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDtoImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey()
  final double discount;
  @override
  final String media;

  @override
  String toString() {
    return 'CouponDto(id: $id, name: $name, description: $description, discount: $discount, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, discount, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDtoImplCopyWith<_$CouponDtoImpl> get copyWith =>
      __$$CouponDtoImplCopyWithImpl<_$CouponDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDtoImplToJson(
      this,
    );
  }
}

abstract class _CouponDto implements CouponDto {
  const factory _CouponDto(
      {final String id,
      required final String name,
      required final String description,
      final double discount,
      required final String media}) = _$CouponDtoImpl;

  factory _CouponDto.fromJson(Map<String, dynamic> json) =
      _$CouponDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get discount;
  @override
  String get media;
  @override
  @JsonKey(ignore: true)
  _$$CouponDtoImplCopyWith<_$CouponDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
