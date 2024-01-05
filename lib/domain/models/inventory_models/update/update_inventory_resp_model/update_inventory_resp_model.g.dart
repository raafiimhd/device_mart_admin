// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInventoryRespModel _$UpdateInventoryRespModelFromJson(
        Map<String, dynamic> json) =>
    UpdateInventoryRespModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpdateInventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateInventoryRespModelToJson(
        UpdateInventoryRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
