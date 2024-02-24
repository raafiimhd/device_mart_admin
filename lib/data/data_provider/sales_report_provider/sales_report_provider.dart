import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/sales_report/sales_report.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:device_mart/domain/repositories/report_repositories/report_repositories.dart';

@LazySingleton(as: SalesReportRepository)
@injectable
class SalesReportProvider implements SalesReportRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  SalesReportProvider(
    this.dio,
    this.secureStorage,
  );

  @override
  Future<Either<ErrorMsg, SalesReport>> salesReport() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final respose = await dio.get(ApiEndPoints.saleReportEndPoint);
      if (respose.statusCode == 200 || respose.statusCode == 201) {
        return Right(SalesReport.fromJson(respose.data));
      } else {
        return Left(ErrorMsg(
            message: SalesReport.fromJson(respose.data).message!));
      }
    } on DioException catch (dioError) {
      log('Requested URL: ${dioError.requestOptions.uri}');
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error-- => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
