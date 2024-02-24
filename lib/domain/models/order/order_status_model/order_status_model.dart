import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status_model.g.dart';

@JsonSerializable()
class OrderStatusModel {
  int? id;
  @JsonKey(name: 'order_status')
  String? orderStatus;

  OrderStatusModel({required this.id, required this.orderStatus});

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) {
    return _$OrderStatusModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$OrderStatusModelToJson(this);
}
