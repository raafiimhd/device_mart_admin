// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderModel _$GetOrderModelFromJson(Map<String, dynamic> json) =>
    GetOrderModel(
      deliveryAddress: json['delivery_address'] as String?,
      image: json['product_image'] as String?,
      orderId: json['order_id'] as int?,
      orderStatus: json['order_status'] as String?,
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      productPrice: json['product_price'] as String?,
    );

Map<String, dynamic> _$GetOrderModelToJson(GetOrderModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_price': instance.productPrice,
      'product_image': instance.image,
      'product_id': instance.productId,
      'order_id': instance.orderId,
      'order_status': instance.orderStatus,
      'payment_method': instance.paymentMethod,
      'delivery_address': instance.deliveryAddress,
    };
