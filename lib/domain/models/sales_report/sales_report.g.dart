// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesReport _$SalesReportFromJson(Map<String, dynamic> json) => SalesReport(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['status-code'] as int?,
    );

Map<String, dynamic> _$SalesReportToJson(SalesReport instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'status-code': instance.statusCode,
    };
