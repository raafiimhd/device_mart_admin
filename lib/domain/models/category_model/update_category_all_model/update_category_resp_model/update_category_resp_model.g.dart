// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRespModel _$UpdateCategoryRespModelFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryRespModel(
      statusCode: json['statusCode'] as int?,
      error: json['error'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpdateCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateCategoryRespModelToJson(
        UpdateCategoryRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'error': instance.error,
      'data': instance.data,
      'message': instance.message,
    };
