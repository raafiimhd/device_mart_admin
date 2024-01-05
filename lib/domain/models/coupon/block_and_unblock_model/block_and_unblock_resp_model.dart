
import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_resp_model.g.dart';
@JsonSerializable()
class BlockAndUnbockCouponRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  BlockAndUnbockCouponRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });
  factory BlockAndUnbockCouponRespModel.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnbockCouponRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnbockCouponRespModelToJson(this);
}
