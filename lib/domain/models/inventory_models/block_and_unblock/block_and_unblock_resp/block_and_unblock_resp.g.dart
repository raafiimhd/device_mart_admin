// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_and_unblock_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockAndUnblockRespModel _$BlockAndUnblockRespModelFromJson(
        Map<String, dynamic> json) =>
    BlockAndUnblockRespModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$BlockAndUnblockRespModelToJson(
        BlockAndUnblockRespModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
