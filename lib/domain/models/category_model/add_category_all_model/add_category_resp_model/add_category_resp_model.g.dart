// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryRespModel _$AddCategoryRespModelFromJson(
        Map<String, dynamic> json) =>
    AddCategoryRespModel(
      statusCode: json['status-code'] as int?,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : AddCategoryModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddCategoryRespModelToJson(
        AddCategoryRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'error': instance.error,
      'data': instance.data,
      'message': instance.message,
    };
