// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupon_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponRespModel _$GetCouponRespModelFromJson(Map<String, dynamic> json) =>
    GetCouponRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetCouponModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetCouponRespModelToJson(GetCouponRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
