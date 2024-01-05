import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_model/add_category_model.dart';
import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_resp_model/add_category_resp_model.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_and_unblock_resp_model/block_and_unblock_resp_model.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_category_model_qurrey/block_and_unblock_category_model_qurrey.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_qurrey_model/get_category_qurrey_model.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_resp_model/get_category_resp_model.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_model/update_category_model.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_resp_model/update_category_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:device_mart/domain/core/repositories/category_repositories/category_repositories.dart';

@LazySingleton(as: CategoryRepository)
@injectable
class CategoryProvider implements CategoryRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  CategoryProvider(
    this.dio,
    this.secureStorage,
  );
  @override
  Future<Either<ErrorMsg, GetCategoryRespModel>> getCategory(
      {required GetCategoryQurreyModel getCategoryQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.get(
        ApiEndPoints.getCategoryEndPoint,
        queryParameters: getCategoryQurreyModel.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetCategoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetCategoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, AddCategoryRespModel>> addCategory(
      {required AddCategoryModel addCategoryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(ApiEndPoints.addCategoryEndPoint,
          data: addCategoryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddCategoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddCategoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, UpdateCategoryRespModel>> updateCategory(
      {required UpdateCategoryModel updateCategoryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(
          ApiEndPoints.updateCategory
              .replaceFirst('{categoryID}', updateCategoryModel.id.toString()),
          data: updateCategoryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UpdateCategoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: UpdateCategoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, AddCategoryRespModel>> addCategoryImage(
      {required AddCategoryModel addCategoryModel,
      required FormData formData}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers['content-Type'] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(
        ApiEndPoints.baseUrl +
            ApiEndPoints.addCategoryImageApiEndPoint
                .replaceFirst('{categoryID}', addCategoryModel.id.toString()),
        data: formData,
        // queryParameters: addCategoryImageIdModel.toJson(),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddCategoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddCategoryRespModel.fromJson(response.data).message!));
      }
    } on DioException catch (e) {
      print(e.toString());
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, BlockUnlbockResponseModel>> blockCategory(
      {required BlockAndUnblockCategoryModelQurrey
          blockAndUnblockCategoryModelQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers['content-Type'] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.baseUrl +
          ApiEndPoints.blockCategoryEndPoint.replaceFirst(
            '{categoryID}',
            blockAndUnblockCategoryModelQurrey.id.toString(),
          ));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockUnlbockResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockUnlbockResponseModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, BlockUnlbockResponseModel>> unblockCategory(
      {required BlockAndUnblockCategoryModelQurrey
          blockAndUnblockCategoryModelQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers['content-Type'] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(
        ApiEndPoints.baseUrl +
            ApiEndPoints.unblockCategoryEndPoint.replaceFirst('{categoryID}',
                blockAndUnblockCategoryModelQurrey.id.toString()),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockUnlbockResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockUnlbockResponseModel.fromJson(response.data).message!));
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
