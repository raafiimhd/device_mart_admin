
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_coupon_model.g.dart';
@JsonSerializable()
class GetCouponModel {
  String? code;
  @JsonKey(name: 'coupon_name')
  String? couponName;
  @JsonKey(name: 'discount_max_amount')
  int? discountMaxAmount;
  @JsonKey(name: 'discount_percentage')
  int? discountPercentage;
  bool? isBlocked;
  int? id;
  @JsonKey(name: 'min_order_value')
  int? minOrderValue;
  @JsonKey(name: 'valid_from')
  String? validFrom;
  @JsonKey(name: 'valid_till')
  String? validTill;
  GetCouponModel(
      {this.code,
      this.couponName,
      this.isBlocked,
      this.discountMaxAmount,
      this.discountPercentage,
      this.minOrderValue,
      this.validFrom,
      this.validTill,
      this.id});
  factory GetCouponModel.fromJson(Map<String, dynamic> json) {
    return _$GetCouponModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetCouponModelToJson(this);
}
