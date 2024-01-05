import 'package:device_mart/domain/models/order/get_order_model/get_order_model.dart';
import 'package:device_mart/domain/models/order/order_status_model/order_status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_data_model.g.dart';
@JsonSerializable()
class OrderDataModel {
  @JsonKey(name: 'order_statuses')
  List<OrderStatusModel>? orderStatuses;
  List<GetOrderModel>? orders;

  OrderDataModel(this.orderStatuses,this.orders);
  factory OrderDataModel.fromJson(Map<String, dynamic> json) {
    return _$OrderDataModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$OrderDataModelToJson(this);
}
