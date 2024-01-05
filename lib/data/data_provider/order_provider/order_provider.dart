import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_resp_model.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:device_mart/domain/models/order/order_resp_model/order_resp_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_resp_model/update_order_status_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:device_mart/domain/core/repositories/order_repositories/order_repositories.dart';

@LazySingleton(as: OrderRepository)
@injectable
class OrderProvider implements OrderRepository {
  final Dio dio;
  final FlutterSecureStorage flutterSecureStorage;
  OrderProvider(
    this.dio,
    this.flutterSecureStorage,
  );

  @override
  Future<Either<ErrorMsg, GetOrderRespModel>> getOrder(
      {required GetOrderQurreyModel getOrderQurreyModel}) async {
    try {
      final token = await flutterSecureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoints.baseUrl + ApiEndPoints.getOrder,
          queryParameters: getOrderQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetOrderRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetOrderRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('DioException: ${dioError.requestOptions.uri}');
      log('DioException message: ${dioError.message}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    } catch (e) {
      log('Unexpected error: ${e.toString()}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    }
  }

  @override
  Future<Either<ErrorMsg, OrderRespModel>> getManagementOrder(
      {required GetOrderQurreyModel getOrderQurreyModel}) async {
    try {
      final token = await flutterSecureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoints.baseUrl + ApiEndPoints.orderManagement,
          queryParameters: getOrderQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(OrderRespModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: OrderRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('DioException: ${dioError.requestOptions.uri}');
      log('DioException message: ${dioError.message}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    } catch (e) {
      log('Unexpected error: ${e.toString()}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    }
  }

  @override
  Future<Either<ErrorMsg, UpdateOrderStatusRespModel>> updateOrderStatus(
      {required UpdateOrderStatusQurreyModel
          updateOrderStatusQurreyModel}) async {
    try {
      final token = await flutterSecureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.updateOrderStatusEndPoint,
          data: updateOrderStatusQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UpdateOrderStatusRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                UpdateOrderStatusRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('DioException: ${dioError.requestOptions.uri}');
      log('DioException message: ${dioError.message}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    } catch (e) {
      log('Unexpected error: ${e.toString()}');
      return Left(ErrorMsg(message: 'Failed to fetch products.'));
    }
  }
}
