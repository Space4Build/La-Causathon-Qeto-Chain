// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreDetailEvent {
  String get idStore => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idStore) started,
    required TResult Function(String idStore, ReviewCreateDto reviewCreate)
        createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idStore)? started,
    TResult? Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idStore)? started,
    TResult Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateReview value) createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateReview value)? createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateReview value)? createReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreDetailEventCopyWith<StoreDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailEventCopyWith<$Res> {
  factory $StoreDetailEventCopyWith(
          StoreDetailEvent value, $Res Function(StoreDetailEvent) then) =
      _$StoreDetailEventCopyWithImpl<$Res, StoreDetailEvent>;
  @useResult
  $Res call({String idStore});
}

/// @nodoc
class _$StoreDetailEventCopyWithImpl<$Res, $Val extends StoreDetailEvent>
    implements $StoreDetailEventCopyWith<$Res> {
  _$StoreDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStore = null,
  }) {
    return _then(_value.copyWith(
      idStore: null == idStore
          ? _value.idStore
          : idStore // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $StoreDetailEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idStore});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$StoreDetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStore = null,
  }) {
    return _then(_$StartedImpl(
      null == idStore
          ? _value.idStore
          : idStore // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.idStore);

  @override
  final String idStore;

  @override
  String toString() {
    return 'StoreDetailEvent.started(idStore: $idStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.idStore, idStore) || other.idStore == idStore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idStore) started,
    required TResult Function(String idStore, ReviewCreateDto reviewCreate)
        createReview,
  }) {
    return started(idStore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idStore)? started,
    TResult? Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
  }) {
    return started?.call(idStore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idStore)? started,
    TResult Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(idStore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateReview value)? createReview,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StoreDetailEvent {
  const factory _Started(final String idStore) = _$StartedImpl;

  @override
  String get idStore;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReviewImplCopyWith<$Res>
    implements $StoreDetailEventCopyWith<$Res> {
  factory _$$CreateReviewImplCopyWith(
          _$CreateReviewImpl value, $Res Function(_$CreateReviewImpl) then) =
      __$$CreateReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idStore, ReviewCreateDto reviewCreate});

  $ReviewCreateDtoCopyWith<$Res> get reviewCreate;
}

/// @nodoc
class __$$CreateReviewImplCopyWithImpl<$Res>
    extends _$StoreDetailEventCopyWithImpl<$Res, _$CreateReviewImpl>
    implements _$$CreateReviewImplCopyWith<$Res> {
  __$$CreateReviewImplCopyWithImpl(
      _$CreateReviewImpl _value, $Res Function(_$CreateReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStore = null,
    Object? reviewCreate = null,
  }) {
    return _then(_$CreateReviewImpl(
      idStore: null == idStore
          ? _value.idStore
          : idStore // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCreate: null == reviewCreate
          ? _value.reviewCreate
          : reviewCreate // ignore: cast_nullable_to_non_nullable
              as ReviewCreateDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCreateDtoCopyWith<$Res> get reviewCreate {
    return $ReviewCreateDtoCopyWith<$Res>(_value.reviewCreate, (value) {
      return _then(_value.copyWith(reviewCreate: value));
    });
  }
}

/// @nodoc

class _$CreateReviewImpl implements _CreateReview {
  const _$CreateReviewImpl({required this.idStore, required this.reviewCreate});

  @override
  final String idStore;
  @override
  final ReviewCreateDto reviewCreate;

  @override
  String toString() {
    return 'StoreDetailEvent.createReview(idStore: $idStore, reviewCreate: $reviewCreate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewImpl &&
            (identical(other.idStore, idStore) || other.idStore == idStore) &&
            (identical(other.reviewCreate, reviewCreate) ||
                other.reviewCreate == reviewCreate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idStore, reviewCreate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewImplCopyWith<_$CreateReviewImpl> get copyWith =>
      __$$CreateReviewImplCopyWithImpl<_$CreateReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String idStore) started,
    required TResult Function(String idStore, ReviewCreateDto reviewCreate)
        createReview,
  }) {
    return createReview(idStore, reviewCreate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String idStore)? started,
    TResult? Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
  }) {
    return createReview?.call(idStore, reviewCreate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String idStore)? started,
    TResult Function(String idStore, ReviewCreateDto reviewCreate)?
        createReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview(idStore, reviewCreate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return createReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return createReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateReview value)? createReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview(this);
    }
    return orElse();
  }
}

abstract class _CreateReview implements StoreDetailEvent {
  const factory _CreateReview(
      {required final String idStore,
      required final ReviewCreateDto reviewCreate}) = _$CreateReviewImpl;

  @override
  String get idStore;
  ReviewCreateDto get reviewCreate;
  @override
  @JsonKey(ignore: true)
  _$$CreateReviewImplCopyWith<_$CreateReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreDetailState {
  Map<String, List<StoreReviewDto>> get reviews =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreDetailStateCopyWith<StoreDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDetailStateCopyWith<$Res> {
  factory $StoreDetailStateCopyWith(
          StoreDetailState value, $Res Function(StoreDetailState) then) =
      _$StoreDetailStateCopyWithImpl<$Res, StoreDetailState>;
  @useResult
  $Res call({Map<String, List<StoreReviewDto>> reviews});
}

/// @nodoc
class _$StoreDetailStateCopyWithImpl<$Res, $Val extends StoreDetailState>
    implements $StoreDetailStateCopyWith<$Res> {
  _$StoreDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StoreReviewDto>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreDetailStateImplCopyWith<$Res>
    implements $StoreDetailStateCopyWith<$Res> {
  factory _$$StoreDetailStateImplCopyWith(_$StoreDetailStateImpl value,
          $Res Function(_$StoreDetailStateImpl) then) =
      __$$StoreDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<StoreReviewDto>> reviews});
}

/// @nodoc
class __$$StoreDetailStateImplCopyWithImpl<$Res>
    extends _$StoreDetailStateCopyWithImpl<$Res, _$StoreDetailStateImpl>
    implements _$$StoreDetailStateImplCopyWith<$Res> {
  __$$StoreDetailStateImplCopyWithImpl(_$StoreDetailStateImpl _value,
      $Res Function(_$StoreDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$StoreDetailStateImpl(
      null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Map<String, List<StoreReviewDto>>,
    ));
  }
}

/// @nodoc

class _$StoreDetailStateImpl extends _StoreDetailState {
  const _$StoreDetailStateImpl(final Map<String, List<StoreReviewDto>> reviews)
      : _reviews = reviews,
        super._();

  final Map<String, List<StoreReviewDto>> _reviews;
  @override
  Map<String, List<StoreReviewDto>> get reviews {
    if (_reviews is EqualUnmodifiableMapView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reviews);
  }

  @override
  String toString() {
    return 'StoreDetailState(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDetailStateImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreDetailStateImplCopyWith<_$StoreDetailStateImpl> get copyWith =>
      __$$StoreDetailStateImplCopyWithImpl<_$StoreDetailStateImpl>(
          this, _$identity);
}

abstract class _StoreDetailState extends StoreDetailState {
  const factory _StoreDetailState(
      final Map<String, List<StoreReviewDto>> reviews) = _$StoreDetailStateImpl;
  const _StoreDetailState._() : super._();

  @override
  Map<String, List<StoreReviewDto>> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$StoreDetailStateImplCopyWith<_$StoreDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
