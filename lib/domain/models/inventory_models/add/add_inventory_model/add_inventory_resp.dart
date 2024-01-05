import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_inventory_resp.g.dart';

@JsonSerializable()
class AddInventoryRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? error;
  AddInventoryModel? data;
  String? message;
  AddInventoryRespModel({
    this.statusCode,
    this.error,
    this.data,
    this.message,
  });
  factory AddInventoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddInventoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddInventoryRespModelToJson(this);
}
