// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_invetory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInventoryModel _$UpdateInventoryModelFromJson(
        Map<String, dynamic> json) =>
    UpdateInventoryModel(
      prdctName: json['product_name'] as String?,
      prdctDesc: json['product_description'] as String?,
      price: json['price'] as int?,
      id: json['productID'] as int?,
      categoryId: json['category_id'] as int?,
    );

Map<String, dynamic> _$UpdateInventoryModelToJson(
        UpdateInventoryModel instance) =>
    <String, dynamic>{
      'product_name': instance.prdctName,
      'product_description': instance.prdctDesc,
      'price': instance.price,
      'productID': instance.id,
      'category_id': instance.categoryId,
    };
