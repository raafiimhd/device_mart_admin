import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/repositories/coupon_repositories/coupon_repositories.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_model.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_resp_model.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_qurrey_model/block_and_unblock_qurrey_model.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_resp_model.dart';
import 'package:device_mart/domain/models/coupon/get/get_coupon_model/get_coupon_resp_model.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_model.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CouponRepositery)
@injectable
class CouponProvider implements CouponRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  CouponProvider(this.dio, this.secureStorage);

  @override
  Future<Either<ErrorMsg, GetCouponRespModel>> getCoupon() async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final respone = await dio.get(ApiEndPoints.getCouponEndPoint);
      if (respone.statusCode == 200 || respone.statusCode == 201) {
        return Right(GetCouponRespModel.fromJson(respone.data));
      } else {
        return Left(ErrorMsg(
            message: GetCouponRespModel.fromJson(respone.data).message!));
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
  Future<Either<ErrorMsg, AddCouponRespModel>> addCouponModel(
      {required AddCouponModel addCouponModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(ApiEndPoints.addCouponEndPoint,
          data: addCouponModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddCouponRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddCouponRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, UpdateCouponRespModel>> updateCoupon(
      {required UpdateCouponModel updateCouponModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final respone = await dio.put(
          ApiEndPoints.baseUrl +
              ApiEndPoints.updateCouponEndPoint
                  .replaceFirst('{couponID}', updateCouponModel.id.toString()),
          data: updateCouponModel.toJson());
      if (respone.statusCode == 200) {
        return Right(UpdateCouponRespModel.fromJson(respone.data));
      } else {
        return Left(ErrorMsg(
            message: UpdateCouponRespModel.fromJson(respone.data).message!));
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
  Future<Either<ErrorMsg, BlockAndUnbockCouponRespModel>> blockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.baseUrl +
          ApiEndPoints.blockCouponEndPoint.replaceFirst(
              '{couponID}', blockAndUnblockCouponQurreyModel.id.toString()));
      if (response.statusCode == 200) {
        return Right(BlockAndUnbockCouponRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: BlockAndUnbockCouponRespModel.fromJson(response.data)
                .message!));
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

  @override
  Future<Either<ErrorMsg, BlockAndUnbockCouponRespModel>> unBlockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.baseUrl +
          ApiEndPoints.unblockCouponEndPoint.replaceFirst(
              '{couponID}', blockAndUnblockCouponQurreyModel.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockAndUnbockCouponRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: BlockAndUnbockCouponRespModel.fromJson(response.data)
                .message!));
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
