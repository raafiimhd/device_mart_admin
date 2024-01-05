// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderStatusRespModel _$UpdateOrderStatusRespModelFromJson(
        Map<String, dynamic> json) =>
    UpdateOrderStatusRespModel(
      data: json['data'],
      statusCode: json['statusCode'] as int?,
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateOrderStatusRespModelToJson(
        UpdateOrderStatusRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
    };
