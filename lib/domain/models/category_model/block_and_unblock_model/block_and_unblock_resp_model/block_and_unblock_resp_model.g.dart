// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_and_unblock_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockUnlbockResponseModel _$BlockUnlbockResponseModelFromJson(
        Map<String, dynamic> json) =>
    BlockUnlbockResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$BlockUnlbockResponseModelToJson(
        BlockUnlbockResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
