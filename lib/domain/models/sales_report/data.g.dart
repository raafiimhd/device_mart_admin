// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      averageOrderValue: (json['average_order_value'] as num?)?.toDouble(),
      date: json['date'] as String?,
      reportFrom: json['report_from'] as String?,
      salesGrowthPercentage:
          (json['sales_growth_percentage'] as num?)?.toDouble(),
      topSellingBrand: json['top_selling_brand'] as String?,
      topSellingProduct: json['top_selling_product'] as String?,
      totalCouponIncentive:
          (json['total_coupon_incentive'] as num?)?.toDouble(),
      totalQuantitySold: json['total_quantity_sold'] as int?,
      totalRevenue: (json['total_revenue'] as num?)?.toDouble(),
      totalSalesCount: json['total_sales_count'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'average_order_value': instance.averageOrderValue,
      'date': instance.date,
      'report_from': instance.reportFrom,
      'sales_growth_percentage': instance.salesGrowthPercentage,
      'top_selling_brand': instance.topSellingBrand,
      'top_selling_product': instance.topSellingProduct,
      'total_coupon_incentive': instance.totalCouponIncentive,
      'total_quantity_sold': instance.totalQuantitySold,
      'total_revenue': instance.totalRevenue,
      'total_sales_count': instance.totalSalesCount,
    };
