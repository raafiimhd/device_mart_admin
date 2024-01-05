import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_order_status_qurrey_model.g.dart';
@JsonSerializable()
class UpdateOrderStatusQurreyModel {
  @JsonKey(name: 'statusID')
  int? statusId;
  @JsonKey(name: 'orderID')
  int? orderId;
  UpdateOrderStatusQurreyModel({
    this.statusId,
    this.orderId,
  });

  factory UpdateOrderStatusQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateOrderStatusQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateOrderStatusQurreyModelToJson(this);
}
