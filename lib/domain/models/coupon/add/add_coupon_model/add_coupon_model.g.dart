// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCouponModel _$AddCouponModelFromJson(Map<String, dynamic> json) =>
    AddCouponModel(
      discountMaxAmount: json['discount_max_amount'] as int?,
      code: json['code'] as String?,
      couponName: json['coupon_name'] as String?,
      discountPercentage: json['discount_percentage'] as int?,
      minOrderValue: json['min_order_value'] as int?,
    )..validatyDays = json['validity_days'] as int;

Map<String, dynamic> _$AddCouponModelToJson(AddCouponModel instance) =>
    <String, dynamic>{
      'coupon_name': instance.couponName,
      'code': instance.code,
      'min_order_value': instance.minOrderValue,
      'discount_max_amount': instance.discountMaxAmount,
      'discount_percentage': instance.discountPercentage,
      'validity_days': instance.validatyDays,
    };
