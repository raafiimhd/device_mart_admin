// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDataModel _$OrderDataModelFromJson(Map<String, dynamic> json) =>
    OrderDataModel(
      (json['order_statuses'] as List<dynamic>?)
          ?.map((e) => OrderStatusModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['orders'] as List<dynamic>?)
          ?.map((e) => GetOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDataModelToJson(OrderDataModel instance) =>
    <String, dynamic>{
      'order_statuses': instance.orderStatuses,
      'orders': instance.orders,
    };
