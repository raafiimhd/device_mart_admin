import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/coupon/get/get_coupon_model/get_coupon_model.dart';
part 'get_coupon_resp_model.g.dart';
@JsonSerializable()
class GetCouponRespModel {
  int? statusCode;
  String? message;
  List<GetCouponModel>? data;
  dynamic error;
  GetCouponRespModel({
    this.statusCode,
    this.message,
    this.data,
    required this.error,
  });
  factory GetCouponRespModel.fromJson(Map<String, dynamic> json) {
    return _$GetCouponRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetCouponRespModelToJson(this);
}
