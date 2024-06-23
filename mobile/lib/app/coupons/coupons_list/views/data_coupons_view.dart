import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_mercadito_app/app/coupons/coupon_detail/coupon_detail_view.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/bloc/coupons_list_bloc.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/coupon_model.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/widgets/coupon_card.dart';

class DataCouponsView extends StatelessWidget {
  const DataCouponsView({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final future = context
            .read<CouponsListBloc>()
            .stream
            .firstWhere((state) => state is CouponsListStateSuccess);

        context.read<CouponsListBloc>().add(const CouponsListEvent.refresh());

        await future;
      },
      child: BlocBuilder<CouponsListBloc, CouponsListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (coupons) => ListView(
              children: coupons.map((dto) {
                final coupon = CouponModel(
                  discount: dto.discount,
                  id: dto.id,
                  code: dto.name,
                  name: dto.description,
                  urlQr: dto.media,
                );
                return GestureDetector(
                  child: CouponCard(couponModel: coupon),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CouponDetailView(model: coupon),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
