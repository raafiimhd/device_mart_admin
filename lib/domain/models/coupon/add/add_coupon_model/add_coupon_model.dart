import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_coupon_model.g.dart';

@JsonSerializable()
class AddCouponModel {
  @JsonKey(name: 'coupon_name')
  String? couponName;
  String? code;
  @JsonKey(name: 'min_order_value')
  int? minOrderValue;
  @JsonKey(name: 'discount_max_amount')
  int? discountMaxAmount;
  @JsonKey(name: 'discount_percentage')
  int? discountPercentage;
  @JsonKey(name: 'validity_days')
  int validatyDays = 1;
  AddCouponModel(
      {this.discountMaxAmount,
      this.code,
      this.couponName,
      this.discountPercentage,
      this.minOrderValue});
  factory AddCouponModel.fromJson(Map<String, dynamic> json) {
    return _$AddCouponModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCouponModelToJson(this);
}
