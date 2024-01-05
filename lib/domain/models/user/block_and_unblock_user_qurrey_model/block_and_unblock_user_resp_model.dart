import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_user_resp_model.g.dart';
@JsonSerializable()
class BlockAndUnblockUserRespModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  BlockAndUnblockUserRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });
  factory BlockAndUnblockUserRespModel.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnblockUserRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnblockUserRespModelToJson(this);
}
