import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_image_qurrey_model/add_inventory_image_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_model.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_resp.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_qurrey/block_and_unblock_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_resp/block_and_unblock_resp.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_management_resp_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_model/update_invetory_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_resp_model/update_inventory_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/core/repositories/inventory_repositories/inventory_repositories.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_resp_model.dart';

@LazySingleton(as: InventoryRepositery)
@injectable
class InventoryProvider implements InventoryRepositery {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  InventoryProvider(
    this.dio,
    this.secureStorage,
  );
  @override
  Future<Either<ErrorMsg, GetInventoryRespModel>> getInventory(
      {required GetResponseQurrey getResponseQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoints.baseUrl + ApiEndPoints.getProductCategory,
          queryParameters: getResponseQurrey.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetInventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetInventoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, AddInventoryRespModel>> addInventory(
      {required AddInventoryModel addInventoryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');


      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }

      final response = await dio.post(
          ApiEndPoints.baseUrl +
              ApiEndPoints.addProductEndPoint.replaceFirst(
                  '{categoryID}', addInventoryModel.categoryId.toString()),
          data: addInventoryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddInventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddInventoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, AddInventoryRespModel>> addProductImage(
      {required FormData formData,
      required AddInventoryImageQurreyModel
          addInventoryImageQurreyModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');

      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.post(
          ApiEndPoints.baseUrl +
              ApiEndPoints.addProductImageEndPoint.replaceFirst(
                  '{productID}', addInventoryImageQurreyModel.id.toString()),
          data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(AddInventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: AddInventoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, UpdateInventoryRespModel>> updateInventory(
      {required UpdateInventoryModel updateInventoryModel}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(
          ApiEndPoints.baseUrl +
              ApiEndPoints.updateProductEndPoint.replaceFirst(
                  '{productID}', updateInventoryModel.id.toString()),
          data: updateInventoryModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(UpdateInventoryRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                UpdateInventoryRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, BlockAndUnblockRespModel>> blockInventory(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.baseUrl +
          ApiEndPoints.blockProductEndPoint.replaceFirst(
              '{productID}', blockAndUnblockQurrey.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockAndUnblockRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockAndUnblockRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, BlockAndUnblockRespModel>> unblockInventory(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.put(ApiEndPoints.baseUrl +
          ApiEndPoints.unblockProductEndPoint.replaceFirst(
              '{productID}', blockAndUnblockQurrey.id.toString()));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(BlockAndUnblockRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                BlockAndUnblockRespModel.fromJson(response.data).message!));
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
  Future<Either<ErrorMsg, GetManagementRespModel>> getManagement(
      {required GetQurreyModel getQurreyModel,
      required GetResponseQurrey getResponseQurrey}) async {
    try {
      final token = await secureStorage.read(key: 'token');
      if (token != null) {
        dio.options.headers["Authorization"] = 'Bearer $token';
        dio.options.headers["accept"] = 'application/json';
      } else {
        return Left(ErrorMsg(message: 'Token is null.'));
      }
      final response = await dio.get(
          ApiEndPoints.baseUrl +
              ApiEndPoints.getMangementApiEndPoint
                  .replaceFirst('{categoryID}', getQurreyModel.id.toString()),
          queryParameters: getResponseQurrey.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetManagementRespModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: GetManagementRespModel.fromJson(response.data).message!));
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
