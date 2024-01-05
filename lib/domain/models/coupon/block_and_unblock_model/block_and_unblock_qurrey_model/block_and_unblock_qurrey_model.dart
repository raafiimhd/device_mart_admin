
import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_qurrey_model.g.dart';
@JsonSerializable()
class BlockAndUnblockCouponQurreyModel {
  @JsonKey(name: 'couponID')
  int? id;
  BlockAndUnblockCouponQurreyModel({
    this.id,
  });
  factory BlockAndUnblockCouponQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnblockCouponQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnblockCouponQurreyModelToJson(this);
}
