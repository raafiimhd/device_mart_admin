import 'package:freezed_annotation/freezed_annotation.dart';
part 'sales_report_model.g.dart';
@JsonSerializable()
class SalesReportModel {
  String? date;
  @JsonKey(name: 'report_from')
  String? reportFrom;
  @JsonKey(name: 'average_order_value')
  int? avgOrderValue;
  @JsonKey(name: 'sales_growth_percentage')
  int? salesGrwthPer;
  @JsonKey(name: 'top_selling_product')
  String? topSelPrdct;
  @JsonKey(name: 'top_selling_brand')
  String? topSelBrnd;
  @JsonKey(name: 'total_coupon_incentive')
  int? totalCpnInc;
  @JsonKey(name: 'total_quantity_sold')
  int? totalQntySold;
  @JsonKey(name: 'total_revenue')
  int? totalRevnue;
  @JsonKey(name: 'total_sales_count')
  int? count;
  
  SalesReportModel(
      this.avgOrderValue,
      this.count,
      this.date,
      this.reportFrom,
      this.salesGrwthPer,
      this.topSelBrnd,
      this.topSelPrdct,
      this.totalCpnInc,
      this.totalQntySold,
      this.totalRevnue);

  factory SalesReportModel.fromJson(Map<String, dynamic> json) {
    return _$SalesReportModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SalesReportModelToJson(this);
}
