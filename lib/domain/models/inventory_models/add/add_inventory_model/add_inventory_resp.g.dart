// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inventory_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInventoryRespModel _$AddInventoryRespModelFromJson(
        Map<String, dynamic> json) =>
    AddInventoryRespModel(
      statusCode: json['status-code'] as int?,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : AddInventoryModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddInventoryRespModelToJson(
        AddInventoryRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'error': instance.error,
      'data': instance.data,
      'message': instance.message,
    };
