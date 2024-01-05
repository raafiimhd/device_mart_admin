// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inventory_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInventoryRespModel _$GetInventoryRespModelFromJson(
        Map<String, dynamic> json) =>
    GetInventoryRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetInventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$GetInventoryRespModelToJson(
        GetInventoryRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status-code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
