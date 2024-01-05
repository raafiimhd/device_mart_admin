// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryModel _$AddCategoryModelFromJson(Map<String, dynamic> json) =>
    AddCategoryModel(
      categoryName: json['category_name'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$AddCategoryModelToJson(AddCategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'id': instance.id,
    };
