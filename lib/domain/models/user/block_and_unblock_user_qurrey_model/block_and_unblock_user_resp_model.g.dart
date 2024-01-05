// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_and_unblock_user_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockAndUnblockUserRespModel _$BlockAndUnblockUserRespModelFromJson(
        Map<String, dynamic> json) =>
    BlockAndUnblockUserRespModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$BlockAndUnblockUserRespModelToJson(
        BlockAndUnblockUserRespModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
