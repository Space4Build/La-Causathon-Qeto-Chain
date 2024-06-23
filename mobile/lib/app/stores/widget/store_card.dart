import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/stores/store_presentation_model.dart';
import 'package:mi_mercadito_app/app/widget/icon_and_text.dart';
import 'package:mi_mercadito_app/app/widget/image_in_cards.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    required this.model,
    super.key,
  });

  final StoreViewModel model;

  @override
  Widget build(BuildContext context) {
    final padding = 8.0;

    final radius = Radius.circular((4));

    return Container(
      width: double.infinity,
      height: 112,
      constraints: const BoxConstraints(minHeight: 112),
      decoration: BoxDecoration(
        color: themeOf(context).white,
        borderRadius: BorderRadius.circular((8)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(28, 41, 20, 0.16),
            blurRadius: 14,
            offset: Offset(0, 1),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        horizontal: (15),
        vertical: (8),
      ),
      padding: EdgeInsets.all(padding),
      child: Row(
        children: [
          Expanded(child: _LeftColumn(model: model)),
          ImageInCards(
            radius: radius,
            // image: model.getPlaceHolder(context.cardWidth, context.cardHeight),
            height: 96,
            width: 96,
            imageUrl: model.imageUrl,
          )
        ],
      ),
    );
  }
}

class _LeftColumn extends StatelessWidget {
  const _LeftColumn({required this.model});

  final StoreViewModel model;

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaler.scale(1);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: (4)),
          child: Text(
            model.name,
            maxLines: 2,
            textScaler: TextScaler.linear(min(textScaleFactor, 1.18)),
            style: themeOf(context).bodySmall.copyWith(
                  fontSize: (18),
                  fontWeight: FontWeight.w700,
                  color: themeOf(context).primaryColor,
                ),
          ),
        ),
        const Spacer(),
        IconAndText(
          title: model.distanceText,
          // OfStallsText',
          icon: Icons.my_location,
          color: themeOf(context).textColor,
        ),
        const SizedBox(height: 4),
        IconAndText(
          title: model.openingHours,
          icon: Icons.access_time,
          color: themeOf(context).textColor,
        ),
      ],
    );
  }
}
