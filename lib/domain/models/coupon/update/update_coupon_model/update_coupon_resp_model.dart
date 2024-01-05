
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_coupon_resp_model.g.dart';
@JsonSerializable()
class UpdateCouponRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  UpdateCouponRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });
  factory UpdateCouponRespModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateCouponRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateCouponRespModelToJson(this);
}
