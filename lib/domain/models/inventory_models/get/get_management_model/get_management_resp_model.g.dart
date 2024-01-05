// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_management_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManagementRespModel _$GetManagementRespModelFromJson(
        Map<String, dynamic> json) =>
    GetManagementRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetManagementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$GetManagementRespModelToJson(
        GetManagementRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
