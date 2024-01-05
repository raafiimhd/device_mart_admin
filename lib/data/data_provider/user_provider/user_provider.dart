import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/core/repositories/user_repositories/user_repositories.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_qurrey.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_resp_model.dart';
import 'package:device_mart/domain/models/user/user_qurrey_model/user_qurrey_model.dart';
import 'package:device_mart/domain/models/user/user_resp_model/user_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
@injectable
class UserProvider implements UserRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  UserProvider(this.dio, this.secureStorage);
  @override
  Future<Either<ErrorMsg, UserRespModel>> getUser(
      {required UserQurreyModel userQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoints.baseUrl + ApiEndPoints.getUserEndPoint,
          queryParameters: userQurreyModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UserRespModel.fromJson(response.data));
      } else {
        return Left(
            ErrorMsg(message: UserRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, BlockAndUnblockUserRespModel>> blockUser(
      {required BlockAndUnblockUserQurreyModel
          blockAndUnblockUserQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(
          ApiEndPoints.baseUrl + ApiEndPoints.blockUser.replaceFirst('{userID}', blockAndUnblockUserQurreyModel.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockAndUnblockUserRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockAndUnblockUserRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, BlockAndUnblockUserRespModel>> unblockUser(
      {required BlockAndUnblockUserQurreyModel
          blockAndUnblockUserQurreyModel}) async{
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(
          ApiEndPoints.baseUrl + ApiEndPoints.unblockUser.replaceFirst('{userID}', blockAndUnblockUserQurreyModel.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockAndUnblockUserRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockAndUnblockUserRespModel.fromJson(response.data).message!));
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
