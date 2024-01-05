// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponModel _$GetCouponModelFromJson(Map<String, dynamic> json) =>
    GetCouponModel(
      code: json['code'] as String?,
      couponName: json['coupon_name'] as String?,
      isBlocked: json['isBlocked'] as bool?,
      discountMaxAmount: json['discount_max_amount'] as int?,
      discountPercentage: json['discount_percentage'] as int?,
      minOrderValue: json['min_order_value'] as int?,
      validFrom: json['valid_from'] as String?,
      validTill: json['valid_till'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$GetCouponModelToJson(GetCouponModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'coupon_name': instance.couponName,
      'discount_max_amount': instance.discountMaxAmount,
      'discount_percentage': instance.discountPercentage,
      'isBlocked': instance.isBlocked,
      'id': instance.id,
      'min_order_value': instance.minOrderValue,
      'valid_from': instance.validFrom,
      'valid_till': instance.validTill,
    };
