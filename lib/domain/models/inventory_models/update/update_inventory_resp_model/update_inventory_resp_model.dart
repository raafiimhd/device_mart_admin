import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/inventory_models/update/update_inventory_model/update_invetory_model.dart';
part 'update_inventory_resp_model.g.dart';

@JsonSerializable()
class UpdateInventoryRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic error;
  List<UpdateInventoryModel>? data;
  UpdateInventoryRespModel({
    this.statusCode,
    this.message,
    required this.error,
    this.data,
  });
  factory UpdateInventoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateInventoryRespModelToJson(this);
}
