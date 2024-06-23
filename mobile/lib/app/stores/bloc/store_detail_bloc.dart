import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_mercadito_app/features/stores/reviews_services.dart';
import 'package:mi_mercadito_app/features/stores/store_review_dto.dart';

part 'store_detail_event.dart';
part 'store_detail_state.dart';
part 'store_detail_bloc.freezed.dart';

class StoreDetailBloc extends Bloc<StoreDetailEvent, StoreDetailState> {
  final ReviewsServices _getReviewsServices = ReviewsServices();
  StoreDetailBloc() : super(StoreDetailState({})) {
    on<_Started>((event, emit) async {
      final reviews =
          await _getReviewsServices.getReviewsByStoreId(event.idStore);
      emit(StoreDetailState({event.idStore: reviews}));
    });
    on<_CreateReview>((event, emit) {
      _getReviewsServices.createReview(event.reviewCreate);
      final currentDate = DateTime.now();
      emit(StoreDetailState({
        ...state.reviews,
        event.idStore: [
          ...state.reviews[event.idStore] ?? [],
          StoreReviewDto(
            id: '1',
            date: '${currentDate.day}/${currentDate.month}/${currentDate.year}',
            name: event.reviewCreate.fullName,
            review: event.reviewCreate.comments,
            averageStars: event.reviewCreate.averageStars.toDouble(),
          ),
        ],
      }));
    });
  }
}
