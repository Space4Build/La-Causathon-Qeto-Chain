import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';

class TitleCoupon extends StatelessWidget {
  const TitleCoupon({
    required this.storeName,
    super.key,
  });

  final String storeName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: (8)),
        Icon(
          Icons.card_giftcard,
          color: themeOf(context).secondaryColor,
          size: 48,
        ),
        SizedBox(width: (8)),
        Expanded(
          flex: 13,
          child: Text(storeName,
              style: themeOf(context).titleSmall.copyWith(
                    color: themeOf(context).primaryColor,
                    fontSize: (24),
                    fontWeight: FontWeight.w700,
                  )),
        ),
        SizedBox(width: (8)),
      ],
    );
  }
}

class ReviewText extends StatelessWidget {
  final String name;
  const ReviewText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: (16), vertical: 16),
        child: Text(
          name,
          style: themeOf(context).titleSmall.copyWith(
                color: themeOf(context).textColor,
                fontSize: (18),
                fontWeight: FontWeight.w700,
              ),
        ));
  }
}
