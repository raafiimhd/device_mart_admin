// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inventory_image_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInventoryImageRespModel _$AddInventoryImageRespModelFromJson(
        Map<String, dynamic> json) =>
    AddInventoryImageRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$AddInventoryImageRespModelToJson(
        AddInventoryImageRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
