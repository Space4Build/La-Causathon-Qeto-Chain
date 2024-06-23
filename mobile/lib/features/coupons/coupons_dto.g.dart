// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupons_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDtoImpl _$$CouponDtoImplFromJson(Map<String, dynamic> json) =>
    _$CouponDtoImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      description: json['description'] as String,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.25,
      media: json['media'] as String,
    );

Map<String, dynamic> _$$CouponDtoImplToJson(_$CouponDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount,
      'media': instance.media,
    };
