import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_management_model.dart';
part 'get_management_resp_model.g.dart';

@JsonSerializable()
class GetManagementRespModel {
  List<GetManagementModel>? data;
  int? statusCode;
  String? message;
  dynamic error;
  GetManagementRespModel({
    this.data,
    this.statusCode,
    this.message,
    required this.error,
  });

  factory GetManagementRespModel.fromJson(Map<String, dynamic> json) {
    return _$GetManagementRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetManagementRespModelToJson(this);
}
