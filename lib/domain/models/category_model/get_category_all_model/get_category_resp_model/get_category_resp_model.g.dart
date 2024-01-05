// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoryRespModel _$GetCategoryRespModelFromJson(
        Map<String, dynamic> json) =>
    GetCategoryRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      error: json['error'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$GetCategoryRespModelToJson(
        GetCategoryRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };
