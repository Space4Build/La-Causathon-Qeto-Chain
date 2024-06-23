part of 'coupons_list_bloc.dart';

@freezed
class CouponsListState with _$CouponsListState {
  const factory CouponsListState.initial() = _Initial;
  const factory CouponsListState.success(List<CouponDto> coupons) =
      CouponsListStateSuccess;
}
