import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/bloc/coupons_list_bloc.dart';
import 'package:mi_mercadito_app/app/stores/store_presentation_model.dart';
import 'package:mi_mercadito_app/app/stores/bloc/store_detail_bloc.dart';
import 'package:mi_mercadito_app/app/stores/review_model.dart';
import 'package:mi_mercadito_app/app/stores/views/create_review_modal.dart';
import 'package:mi_mercadito_app/app/stores/widget/image_store.dart';
import 'package:mi_mercadito_app/app/stores/widget/title_store.dart';
import 'package:mi_mercadito_app/app/stores/widget/review_card.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_mercadito_app/features/coupons/coupons_dto.dart';

class StoreDetailView extends StatelessWidget {
  final StoreViewModel model;

  const StoreDetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreDetailBloc, StoreDetailState>(
      builder: (context, state) {
        final reviews = state.getReviewsByStoreId(model.id);
        return Scaffold(
          backgroundColor: themeOf(context).backgroundColor2,
          appBar: AppBar(
            title: Text('Detalles'),
            // elevation: 1,
            actions: [
              //Hacer reseña button
              FilledButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => CreateModalReview(
                            onCreatedReview: (dto) {
                              context
                                  .read<CouponsListBloc>()
                                  .add(CouponsListEvent.addCoupon(CouponDto(
                                    id: DateTime.now()
                                        .millisecondsSinceEpoch
                                        .toString(),
                                    name: model.name
                                            .toUpperCase()
                                            .replaceAll(' ', '') +
                                        DateTime.now().year.toString(),
                                    description:
                                        'Cupon de descuento en ' + model.name,
                                    discount: 0.25,
                                    media:
                                        'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg',
                                  )));
                              BlocProvider.of<StoreDetailBloc>(context)
                                  .add(StoreDetailEvent.createReview(
                                idStore: model.id,
                                reviewCreate:
                                    dto.copyWith(storeId: int.parse(model.id)),
                              ));
                            },
                          ));
                },
                child: Text('Hacer reseña'),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TitleStore(
                storeName: model.name,
                storeNumber: model.distanceText,
              ),
              SizedBox(height: 16),
              ImageStore(imageUrl: model.imageUrl),
              ReviewText(storeName: 'Calificación:'),
              StartsRow(rating: state.raitingAverage),
              ReviewText(storeName: 'Reseñas:'),
              state.reviews[model.id] == null
                  ? const Center(child: CircularProgressIndicator())
                  : state.reviews[model.id]!.isEmpty
                      ? const Center(child: Text('No hay reseñas'))
                      : Column(
                          children: reviews
                              .map((review) => ReviewCard(
                                    review: ReviewModel(
                                      name: review.name,
                                      rating: review.averageStars,
                                      date: review.date,
                                      review: review.review,
                                    ),
                                  ))
                              .toList(),
                        ),
            ],
          ),
        );
      },
    );
  }
}
