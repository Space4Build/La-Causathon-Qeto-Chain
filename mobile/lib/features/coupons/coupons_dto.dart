import 'package:freezed_annotation/freezed_annotation.dart';
part 'coupons_dto.freezed.dart';
part 'coupons_dto.g.dart';

@freezed
class CouponDto with _$CouponDto {
  const factory CouponDto({
    @Default('') String id,
    required String name,
    required String description,
    @Default(0.25) double discount,
    required String media,
  }) = _CouponDto;

  factory CouponDto.fromJson(Map<String, dynamic> json) =>
      _$CouponDtoFromJson(json);
}
