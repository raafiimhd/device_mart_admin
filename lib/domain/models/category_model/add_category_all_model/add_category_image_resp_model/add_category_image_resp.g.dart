// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_image_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryImageRespModel _$AddCategoryImageRespModelFromJson(
        Map<String, dynamic> json) =>
    AddCategoryImageRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$AddCategoryImageRespModelToJson(
        AddCategoryImageRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
