// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCategoryModel _$GetCategoryModelFromJson(Map<String, dynamic> json) =>
    GetCategoryModel(
      categoryName: json['category_name'] as String,
      id: json['id'] as int,
      images: json['images'] as Map<String, dynamic>?,
      isBlocked: json['is_blocked'] as bool,
    );

Map<String, dynamic> _$GetCategoryModelToJson(GetCategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'id': instance.id,
      'images': instance.images,
      'is_blocked': instance.isBlocked,
    };
