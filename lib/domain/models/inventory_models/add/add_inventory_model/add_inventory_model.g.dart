// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddInventoryModel _$AddInventoryModelFromJson(Map<String, dynamic> json) =>
    AddInventoryModel(
      productName: json['product_name'] as String?,
      productDesc: json['product_description'] as String?,
      price: json['price'] as int?,
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
    );

Map<String, dynamic> _$AddInventoryModelToJson(AddInventoryModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_description': instance.productDesc,
      'price': instance.price,
      'id': instance.id,
      'category_id': instance.categoryId,
    };
