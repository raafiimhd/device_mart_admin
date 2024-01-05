
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_coupon_resp_model.g.dart';
@JsonSerializable()
class AddCouponRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  AddCouponRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });
  factory AddCouponRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddCouponRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddCouponRespModelToJson(this);
}
