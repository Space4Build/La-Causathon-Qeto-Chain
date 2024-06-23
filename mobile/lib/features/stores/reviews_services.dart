import 'package:mi_mercadito_app/const/url_base.dart';
import 'package:mi_mercadito_app/features/stores/store_review_dto.dart';
import 'package:dio/dio.dart';

class ReviewsServices {
  final dio = Dio();

  Future<List<StoreReviewDto>> getReviewsByStoreId(String id) async {
    try {
      final currentDate = DateTime.now();
      final response = await dio.get('$baseUrl/store/$id/reviews');
      final reviews = response.data['data']['GetStarReviewsByStoreId'] as List;
      return reviews
          .map((e) => StoreReviewDto(
                id: e['userId'],
                date:
                    '${currentDate.day}/${currentDate.month}/${currentDate.year}',
                name: e['fullName'],
                review: e['comments'],
                averageStars: double.parse(e['averageStars'].toString()),
              ))
          .toList();
    } catch (e) {
      print('Error al realizar la petición: $e');
      return [];
    }
  } //http://localhost:3000/smartapi/v1/store/2/reviews

  Future<bool> createReview(ReviewCreateDto review) async {
    try {
      final response = await dio.post(
        '$baseUrl/store/reviews',
        data: review.toJson(),
      );
      return response.statusCode == 200;
    } catch (e) {
      print('Error al realizar la petición: $e');
      return false;
    }
  }
}
