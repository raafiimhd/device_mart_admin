// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_coupon_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCouponRespModel _$AddCouponRespModelFromJson(Map<String, dynamic> json) =>
    AddCouponRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$AddCouponRespModelToJson(AddCouponRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
