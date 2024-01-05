// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_coupon_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCouponRespModel _$UpdateCouponRespModelFromJson(
        Map<String, dynamic> json) =>
    UpdateCouponRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$UpdateCouponRespModelToJson(
        UpdateCouponRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
