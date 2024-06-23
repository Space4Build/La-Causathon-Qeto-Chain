part of 'coupons_list_bloc.dart';

@freezed
class CouponsListEvent with _$CouponsListEvent {
  const factory CouponsListEvent.started() = _Started;
  const factory CouponsListEvent.refresh() = _Refresh;
  const factory CouponsListEvent.addCoupon(CouponDto coupon) = _AddCoupon;
}
