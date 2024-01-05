// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_management_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetManagementModel _$GetManagementModelFromJson(Map<String, dynamic> json) =>
    GetManagementModel(
      brand: json['brand'] as String?,
      id: json['category_id'] as int,
      isBlocked: json['is_blocked'] as bool?,
      isWishlisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      productDes: json['product_description'] as String?,
      productName: json['product_name'] as String?,
      images: json['images'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GetManagementModelToJson(GetManagementModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'category_id': instance.id,
      'is_blocked': instance.isBlocked,
      'is_wishlisted': instance.isWishlisted,
      'price': instance.price,
      'images': instance.images,
      'product_description': instance.productDes,
      'product_name': instance.productName,
    };
