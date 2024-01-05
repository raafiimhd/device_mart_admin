import 'package:json_annotation/json_annotation.dart';

part 'block_and_unblock_resp_model.g.dart';

@JsonSerializable()
class BlockUnlbockResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  BlockUnlbockResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory BlockUnlbockResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BlockUnlbockResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUnlbockResponseModelToJson(this);
}
