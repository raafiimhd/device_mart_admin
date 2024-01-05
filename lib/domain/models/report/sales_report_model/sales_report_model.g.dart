// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesReportModel _$SalesReportModelFromJson(Map<String, dynamic> json) =>
    SalesReportModel(
      json['average_order_value'] as int?,
      json['total_sales_count'] as int?,
      json['date'] as String?,
      json['report_from'] as String?,
      json['sales_growth_percentage'] as int?,
      json['top_selling_brand'] as String?,
      json['top_selling_product'] as String?,
      json['total_coupon_incentive'] as int?,
      json['total_quantity_sold'] as int?,
      json['total_revenue'] as int?,
    );

Map<String, dynamic> _$SalesReportModelToJson(SalesReportModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'report_from': instance.reportFrom,
      'average_order_value': instance.avgOrderValue,
      'sales_growth_percentage': instance.salesGrwthPer,
      'top_selling_product': instance.topSelPrdct,
      'top_selling_brand': instance.topSelBrnd,
      'total_coupon_incentive': instance.totalCpnInc,
      'total_quantity_sold': instance.totalQntySold,
      'total_revenue': instance.totalRevnue,
      'total_sales_count': instance.count,
    };
