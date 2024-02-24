import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_inventory_resp_model.g.dart';

@JsonSerializable()
class GetInventoryRespModel {
  List<GetInventoryModel>? data;
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  String? error;
  GetInventoryRespModel({
    this.data,
    this.statusCode,
    this.message,
    this.error,
  });
  factory GetInventoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$GetInventoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetInventoryRespModelToJson(this);
}
