
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_order_resp_model.g.dart';
@JsonSerializable()
class GetOrderRespModel {
  List<Map<String,dynamic>>? data;
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  String? error;
  GetOrderRespModel({
    this.data,
    this.statusCode,
    this.message,
    this.error,
  });
  factory GetOrderRespModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderRespModelFromJson(json);
  }
  Map<String,dynamic> toJson() => _$GetOrderRespModelToJson(this);
}
