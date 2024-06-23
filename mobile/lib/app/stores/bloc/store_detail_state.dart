part of 'store_detail_bloc.dart';

@freezed
class StoreDetailState with _$StoreDetailState {
  const factory StoreDetailState(
    Map<String, List<StoreReviewDto>> reviews,
  ) = _StoreDetailState;

  const StoreDetailState._();

  double get raitingAverage {
    final ratings = reviews.values
        .expand((element) => element)
        .map((e) => e.averageStars)
        .toList();
    return ratings.isEmpty
        ? 0
        : ratings.reduce((a, b) => a + b) / ratings.length;
  }

  List<StoreReviewDto> getReviewsByStoreId(String id) {
    return reviews[id] ?? [];
  }
}
