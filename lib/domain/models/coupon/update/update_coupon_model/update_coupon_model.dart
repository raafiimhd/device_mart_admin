import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_coupon_model.g.dart';

@JsonSerializable()
class UpdateCouponModel {
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
  @JsonKey(name: 'couponID')
  int? id;
  UpdateCouponModel(
      {this.discountMaxAmount,
      this.code,
      this.couponName,
      this.discountPercentage,
      this.minOrderValue,
      this.id});
  factory UpdateCouponModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateCouponModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateCouponModelToJson(this);
}
