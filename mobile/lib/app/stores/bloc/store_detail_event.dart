part of 'store_detail_bloc.dart';

@freezed
class StoreDetailEvent with _$StoreDetailEvent {
  const factory StoreDetailEvent.started(String idStore) = _Started;
  const factory StoreDetailEvent.createReview({
    required String idStore,
    required ReviewCreateDto reviewCreate,
  }) = _CreateReview;
}
