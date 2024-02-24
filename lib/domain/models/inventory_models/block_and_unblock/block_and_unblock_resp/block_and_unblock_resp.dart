import 'package:freezed_annotation/freezed_annotation.dart';
part 'block_and_unblock_resp.g.dart';

@JsonSerializable()
class BlockAndUnblockRespModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  BlockAndUnblockRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });
  factory BlockAndUnblockRespModel.fromJson(Map<String, dynamic> json) {
    return _$BlockAndUnblockRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$BlockAndUnblockRespModelToJson(this);
}
