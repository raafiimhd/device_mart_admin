import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/sales_report/sales_report.dart';

abstract class SalesReportRepository {
  Future<Either<ErrorMsg, SalesReport>> salesReport();
}
