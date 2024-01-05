// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryModel _$UpdateCategoryModelFromJson(Map<String, dynamic> json) =>
    UpdateCategoryModel(
      categoryName: json['category_name'] as String,
      id: json['categoryID'] as int,
    );

Map<String, dynamic> _$UpdateCategoryModelToJson(
        UpdateCategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'categoryID': instance.id,
    };
