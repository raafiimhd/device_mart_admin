// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesReportRespModel _$SalesReportRespModelFromJson(
        Map<String, dynamic> json) =>
    SalesReportRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$SalesReportRespModelToJson(
        SalesReportRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
