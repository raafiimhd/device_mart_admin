import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dioInstance => Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
}
