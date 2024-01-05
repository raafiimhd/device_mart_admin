import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/order/order_data_model/order_data_model.dart';
part 'order_resp_model.g.dart';
@JsonSerializable()
class OrderRespModel {
  OrderDataModel? data;
  int? statusCode;
  dynamic error;
  String? message;
  OrderRespModel({
    this.data,
    this.statusCode,
    this.error,
    this.message,
  });

  factory OrderRespModel.fromJson(Map<String, dynamic> json) {
    return _$OrderRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$OrderRespModelToJson(this);
}
