import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_order_model.g.dart';

@JsonSerializable()
class GetOrderModel {
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_price')
  int? productPrice;
  Map<String, dynamic>? images;
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_status')
  String? orderStatus;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'delivery_address')
  String? deliveryAddress;

  GetOrderModel(
      {this.deliveryAddress,
      this.images,
      this.orderId,
      this.orderStatus,
      this.productId,
      this.productName,
      this.paymentMethod,
      this.productPrice});

  factory GetOrderModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetOrderModelToJson(this);
}
