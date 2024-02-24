import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'average_order_value')
  double? averageOrderValue;
  String? date;
  @JsonKey(name: 'report_from')
  String? reportFrom;
  @JsonKey(name: 'sales_growth_percentage')
  double? salesGrowthPercentage;
  @JsonKey(name: 'top_selling_brand')
  String? topSellingBrand;
  @JsonKey(name: 'top_selling_product')
  String? topSellingProduct;
  @JsonKey(name: 'total_coupon_incentive')
  double? totalCouponIncentive;
  @JsonKey(name: 'total_quantity_sold')
  int? totalQuantitySold;
  @JsonKey(name: 'total_revenue')
  double? totalRevenue;
  @JsonKey(name: 'total_sales_count')
  int? totalSalesCount;

  Data({
    this.averageOrderValue,
    this.date,
    this.reportFrom,
    this.salesGrowthPercentage,
    this.topSellingBrand,
    this.topSellingProduct,
    this.totalCouponIncentive,
    this.totalQuantitySold,
    this.totalRevenue,
    this.totalSalesCount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
