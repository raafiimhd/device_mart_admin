import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_inventory_image_resp_model.g.dart';

@JsonSerializable()
class AddInventoryImageRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  AddInventoryImageRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory AddInventoryImageRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddInventoryImageRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddInventoryImageRespModelToJson(this);
}
