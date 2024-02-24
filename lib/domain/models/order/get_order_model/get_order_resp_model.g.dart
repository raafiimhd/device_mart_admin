// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderRespModel _$GetOrderRespModelFromJson(Map<String, dynamic> json) =>
    GetOrderRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$GetOrderRespModelToJson(GetOrderRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status-code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
