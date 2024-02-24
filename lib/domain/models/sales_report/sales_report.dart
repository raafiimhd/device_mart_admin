import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sales_report.g.dart';

@JsonSerializable()
class SalesReport {
  Data? data;
  String? error;
  String? message;
  @JsonKey(name: 'status-code')
  int? statusCode;

  SalesReport({this.data, this.error, this.message, this.statusCode});

  factory SalesReport.fromJson(Map<String, dynamic> json) {
    return _$SalesReportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesReportToJson(this);
}
