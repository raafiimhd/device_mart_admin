import 'package:freezed_annotation/freezed_annotation.dart';
part 'sales_report_resp_model.g.dart';

@JsonSerializable()
class SalesReportRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  List<Map<String,dynamic>>? data;
  dynamic error;

  SalesReportRespModel({
    this.data,
    this.statusCode,
    this.message,
    this.error,
  });

  factory SalesReportRespModel.fromJson(Map<String, dynamic> json) {
    return _$SalesReportRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesReportRespModelToJson(this);
}
