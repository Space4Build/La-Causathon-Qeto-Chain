import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/features/stores/store_review_dto.dart';

class CreateModalReview extends StatefulWidget {
  const CreateModalReview({super.key, required this.onCreatedReview});

  final void Function(ReviewCreateDto) onCreatedReview;

  @override
  State<CreateModalReview> createState() => _CreateModalReviewState();
}

class _CreateModalReviewState extends State<CreateModalReview> {
  int productQualityStars = 0;
  int customerAttentionStars = 0;
  int waitingTimeStars = 0;
  String review = '';

  bool get isEnableButton =>
      productQualityStars != 0 &&
      customerAttentionStars != 0 &&
      waitingTimeStars != 0 &&
      review.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Crear reseña'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RowStarButton(
            onStarSelected: (value) {
              setState(() {
                productQualityStars = value;
              });
            },
            starSelected: productQualityStars,
          ),
          const Text('Calidad del producto'),
          RowStarButton(
            onStarSelected: (value) {
              setState(() {
                customerAttentionStars = value;
              });
            },
            starSelected: customerAttentionStars,
          ),
          const Text('Atención al cliente'),
          RowStarButton(
            onStarSelected: (value) {
              setState(() {
                waitingTimeStars = value;
              });
            },
            starSelected: waitingTimeStars,
          ),
          const Text('Tiempo de espera'),
          TextField(
            onChanged: (value) {
              setState(() {
                review = value;
              });
            },
            decoration: const InputDecoration(
              hintText: 'Escribe tu reseña',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: isEnableButton
              ? () {
                  widget.onCreatedReview(ReviewCreateDto(
                    fullName: 'Jair Conislla',
                    storeId: 0,
                    userId: 1,
                    productQualityStars: productQualityStars.toInt(),
                    customerAttentionStars: customerAttentionStars.toInt(),
                    waitingTimeStars: waitingTimeStars,
                    averageStars: (productQualityStars +
                            customerAttentionStars +
                            waitingTimeStars) ~/
                        3,
                    comments: review,
                  ));
                  Navigator.of(context).pop();
                }
              : null,
          child: const Text('Enviar'),
        ),
      ],
    );
  }
}

class RowStarButton extends StatelessWidget {
  final void Function(int) onStarSelected;
  final int starSelected;
  const RowStarButton(
      {super.key, required this.onStarSelected, required this.starSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var i = 1; i <= 5; i++)
          IconButton(
            icon: Icon(
              Icons.star,
              color: i <= starSelected ? Colors.amber : Colors.grey,
              size: 30,
            ),
            onPressed: () {
              onStarSelected(i);
            },
          ),
      ],
    );
  }
}
