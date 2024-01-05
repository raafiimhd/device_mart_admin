// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInventoryModel _$GetInventoryModelFromJson(Map<String, dynamic> json) =>
    GetInventoryModel(
      brands: json['brands'] as String?,
      categoryId: json['category_id'] as int?,
      id: json['id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      isBlocked: json['is_blocked'] as bool?,
      isWishlisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      prdctDescp: json['product_description'] as String?,
      prdctName: json['product_name'] as String?,
    );

Map<String, dynamic> _$GetInventoryModelToJson(GetInventoryModel instance) =>
    <String, dynamic>{
      'brands': instance.brands,
      'category_id': instance.categoryId,
      'id': instance.id,
      'images': instance.images,
      'is_blocked': instance.isBlocked,
      'is_wishlisted': instance.isWishlisted,
      'price': instance.price,
      'product_description': instance.prdctDescp,
      'product_name': instance.prdctName,
    };
