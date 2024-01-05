import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/report/sales_report_resp_model/sales_report_resp_model.dart';

abstract class SalesReportRepository {
  Future<Either<ErrorMsg, SalesReportRespModel>> salesReport();
}
