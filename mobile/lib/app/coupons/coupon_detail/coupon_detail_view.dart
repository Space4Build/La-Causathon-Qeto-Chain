import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/coupons/coupon_detail/title_coupon.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/coupon_model.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';

class CouponDetailView extends StatelessWidget {
  final CouponModel model;
  const CouponDetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeOf(context).backgroundColor2,
      appBar: AppBar(
        title: Text('Cupón Detalle'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TitleCoupon(
            storeName: model.name,
          ),
          ReviewText(name: 'Código: ${model.code}'),
          ReviewText(name: 'Descuento ${model.discount * 100}%'),
          Image.network(model.urlQr),
        ],
      ),
    );
  }
}
