// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRespModel _$OrderRespModelFromJson(Map<String, dynamic> json) =>
    OrderRespModel(
      data: json['data'] == null
          ? null
          : OrderDataModel.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int?,
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrderRespModelToJson(OrderRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
    };
