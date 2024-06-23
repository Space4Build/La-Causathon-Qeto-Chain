// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreReviewDto _$StoreReviewDtoFromJson(Map<String, dynamic> json) {
  return _StoreReviewDto.fromJson(json);
}

/// @nodoc
mixin _$StoreReviewDto {
  String get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  double get averageStars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreReviewDtoCopyWith<StoreReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreReviewDtoCopyWith<$Res> {
  factory $StoreReviewDtoCopyWith(
          StoreReviewDto value, $Res Function(StoreReviewDto) then) =
      _$StoreReviewDtoCopyWithImpl<$Res, StoreReviewDto>;
  @useResult
  $Res call(
      {String id,
      String date,
      String name,
      String review,
      double averageStars});
}

/// @nodoc
class _$StoreReviewDtoCopyWithImpl<$Res, $Val extends StoreReviewDto>
    implements $StoreReviewDtoCopyWith<$Res> {
  _$StoreReviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? name = null,
    Object? review = null,
    Object? averageStars = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      averageStars: null == averageStars
          ? _value.averageStars
          : averageStars // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreReviewDtoImplCopyWith<$Res>
    implements $StoreReviewDtoCopyWith<$Res> {
  factory _$$StoreReviewDtoImplCopyWith(_$StoreReviewDtoImpl value,
          $Res Function(_$StoreReviewDtoImpl) then) =
      __$$StoreReviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String date,
      String name,
      String review,
      double averageStars});
}

/// @nodoc
class __$$StoreReviewDtoImplCopyWithImpl<$Res>
    extends _$StoreReviewDtoCopyWithImpl<$Res, _$StoreReviewDtoImpl>
    implements _$$StoreReviewDtoImplCopyWith<$Res> {
  __$$StoreReviewDtoImplCopyWithImpl(
      _$StoreReviewDtoImpl _value, $Res Function(_$StoreReviewDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? name = null,
    Object? review = null,
    Object? averageStars = null,
  }) {
    return _then(_$StoreReviewDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      averageStars: null == averageStars
          ? _value.averageStars
          : averageStars // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreReviewDtoImpl implements _StoreReviewDto {
  const _$StoreReviewDtoImpl(
      {required this.id,
      required this.date,
      required this.name,
      required this.review,
      required this.averageStars});

  factory _$StoreReviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreReviewDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String date;
  @override
  final String name;
  @override
  final String review;
  @override
  final double averageStars;

  @override
  String toString() {
    return 'StoreReviewDto(id: $id, date: $date, name: $name, review: $review, averageStars: $averageStars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreReviewDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.averageStars, averageStars) ||
                other.averageStars == averageStars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, name, review, averageStars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreReviewDtoImplCopyWith<_$StoreReviewDtoImpl> get copyWith =>
      __$$StoreReviewDtoImplCopyWithImpl<_$StoreReviewDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreReviewDtoImplToJson(
      this,
    );
  }
}

abstract class _StoreReviewDto implements StoreReviewDto {
  const factory _StoreReviewDto(
      {required final String id,
      required final String date,
      required final String name,
      required final String review,
      required final double averageStars}) = _$StoreReviewDtoImpl;

  factory _StoreReviewDto.fromJson(Map<String, dynamic> json) =
      _$StoreReviewDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get date;
  @override
  String get name;
  @override
  String get review;
  @override
  double get averageStars;
  @override
  @JsonKey(ignore: true)
  _$$StoreReviewDtoImplCopyWith<_$StoreReviewDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewCreateDto _$ReviewCreateDtoFromJson(Map<String, dynamic> json) {
  return _ReviewCreateDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewCreateDto {
  String get comments => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  int get storeId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get productQualityStars => throw _privateConstructorUsedError;
  int get customerAttentionStars => throw _privateConstructorUsedError;
  int get waitingTimeStars => throw _privateConstructorUsedError;
  int get averageStars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCreateDtoCopyWith<ReviewCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreateDtoCopyWith<$Res> {
  factory $ReviewCreateDtoCopyWith(
          ReviewCreateDto value, $Res Function(ReviewCreateDto) then) =
      _$ReviewCreateDtoCopyWithImpl<$Res, ReviewCreateDto>;
  @useResult
  $Res call(
      {String comments,
      String fullName,
      int storeId,
      int userId,
      int productQualityStars,
      int customerAttentionStars,
      int waitingTimeStars,
      int averageStars});
}

/// @nodoc
class _$ReviewCreateDtoCopyWithImpl<$Res, $Val extends ReviewCreateDto>
    implements $ReviewCreateDtoCopyWith<$Res> {
  _$ReviewCreateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? fullName = null,
    Object? storeId = null,
    Object? userId = null,
    Object? productQualityStars = null,
    Object? customerAttentionStars = null,
    Object? waitingTimeStars = null,
    Object? averageStars = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productQualityStars: null == productQualityStars
          ? _value.productQualityStars
          : productQualityStars // ignore: cast_nullable_to_non_nullable
              as int,
      customerAttentionStars: null == customerAttentionStars
          ? _value.customerAttentionStars
          : customerAttentionStars // ignore: cast_nullable_to_non_nullable
              as int,
      waitingTimeStars: null == waitingTimeStars
          ? _value.waitingTimeStars
          : waitingTimeStars // ignore: cast_nullable_to_non_nullable
              as int,
      averageStars: null == averageStars
          ? _value.averageStars
          : averageStars // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewCreateDtoImplCopyWith<$Res>
    implements $ReviewCreateDtoCopyWith<$Res> {
  factory _$$ReviewCreateDtoImplCopyWith(_$ReviewCreateDtoImpl value,
          $Res Function(_$ReviewCreateDtoImpl) then) =
      __$$ReviewCreateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String comments,
      String fullName,
      int storeId,
      int userId,
      int productQualityStars,
      int customerAttentionStars,
      int waitingTimeStars,
      int averageStars});
}

/// @nodoc
class __$$ReviewCreateDtoImplCopyWithImpl<$Res>
    extends _$ReviewCreateDtoCopyWithImpl<$Res, _$ReviewCreateDtoImpl>
    implements _$$ReviewCreateDtoImplCopyWith<$Res> {
  __$$ReviewCreateDtoImplCopyWithImpl(
      _$ReviewCreateDtoImpl _value, $Res Function(_$ReviewCreateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? fullName = null,
    Object? storeId = null,
    Object? userId = null,
    Object? productQualityStars = null,
    Object? customerAttentionStars = null,
    Object? waitingTimeStars = null,
    Object? averageStars = null,
  }) {
    return _then(_$ReviewCreateDtoImpl(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productQualityStars: null == productQualityStars
          ? _value.productQualityStars
          : productQualityStars // ignore: cast_nullable_to_non_nullable
              as int,
      customerAttentionStars: null == customerAttentionStars
          ? _value.customerAttentionStars
          : customerAttentionStars // ignore: cast_nullable_to_non_nullable
              as int,
      waitingTimeStars: null == waitingTimeStars
          ? _value.waitingTimeStars
          : waitingTimeStars // ignore: cast_nullable_to_non_nullable
              as int,
      averageStars: null == averageStars
          ? _value.averageStars
          : averageStars // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewCreateDtoImpl implements _ReviewCreateDto {
  const _$ReviewCreateDtoImpl(
      {required this.comments,
      required this.fullName,
      required this.storeId,
      required this.userId,
      required this.productQualityStars,
      required this.customerAttentionStars,
      required this.waitingTimeStars,
      required this.averageStars});

  factory _$ReviewCreateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewCreateDtoImplFromJson(json);

  @override
  final String comments;
  @override
  final String fullName;
  @override
  final int storeId;
  @override
  final int userId;
  @override
  final int productQualityStars;
  @override
  final int customerAttentionStars;
  @override
  final int waitingTimeStars;
  @override
  final int averageStars;

  @override
  String toString() {
    return 'ReviewCreateDto(comments: $comments, fullName: $fullName, storeId: $storeId, userId: $userId, productQualityStars: $productQualityStars, customerAttentionStars: $customerAttentionStars, waitingTimeStars: $waitingTimeStars, averageStars: $averageStars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCreateDtoImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productQualityStars, productQualityStars) ||
                other.productQualityStars == productQualityStars) &&
            (identical(other.customerAttentionStars, customerAttentionStars) ||
                other.customerAttentionStars == customerAttentionStars) &&
            (identical(other.waitingTimeStars, waitingTimeStars) ||
                other.waitingTimeStars == waitingTimeStars) &&
            (identical(other.averageStars, averageStars) ||
                other.averageStars == averageStars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      comments,
      fullName,
      storeId,
      userId,
      productQualityStars,
      customerAttentionStars,
      waitingTimeStars,
      averageStars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCreateDtoImplCopyWith<_$ReviewCreateDtoImpl> get copyWith =>
      __$$ReviewCreateDtoImplCopyWithImpl<_$ReviewCreateDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewCreateDtoImplToJson(
      this,
    );
  }
}

abstract class _ReviewCreateDto implements ReviewCreateDto {
  const factory _ReviewCreateDto(
      {required final String comments,
      required final String fullName,
      required final int storeId,
      required final int userId,
      required final int productQualityStars,
      required final int customerAttentionStars,
      required final int waitingTimeStars,
      required final int averageStars}) = _$ReviewCreateDtoImpl;

  factory _ReviewCreateDto.fromJson(Map<String, dynamic> json) =
      _$ReviewCreateDtoImpl.fromJson;

  @override
  String get comments;
  @override
  String get fullName;
  @override
  int get storeId;
  @override
  int get userId;
  @override
  int get productQualityStars;
  @override
  int get customerAttentionStars;
  @override
  int get waitingTimeStars;
  @override
  int get averageStars;
  @override
  @JsonKey(ignore: true)
  _$$ReviewCreateDtoImplCopyWith<_$ReviewCreateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
