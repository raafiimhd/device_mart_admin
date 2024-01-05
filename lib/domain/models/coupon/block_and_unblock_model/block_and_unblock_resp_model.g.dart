// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_and_unblock_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockAndUnbockCouponRespModel _$BlockAndUnbockCouponRespModelFromJson(
        Map<String, dynamic> json) =>
    BlockAndUnbockCouponRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$BlockAndUnbockCouponRespModelToJson(
        BlockAndUnbockCouponRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
