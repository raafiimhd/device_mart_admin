import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_order_status_resp_model.g.dart';

@JsonSerializable()
class UpdateOrderStatusRespModel {
  dynamic data;
  int? statusCode;
  dynamic error;
  String? message;
  UpdateOrderStatusRespModel({
    this.data,
    this.statusCode,
    required this.error,
    this.message,
  });

  factory UpdateOrderStatusRespModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateOrderStatusRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateOrderStatusRespModelToJson(this);
}
