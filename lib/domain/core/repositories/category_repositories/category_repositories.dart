import 'package:dartz/dartz.dart';
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

abstract class CategoryRepository {
  Future<Either<ErrorMsg, GetCategoryRespModel>> getCategory(
   {required GetCategoryQurreyModel getCategoryQurreyModel}
  );
  Future<Either<ErrorMsg, AddCategoryRespModel>> addCategory(
      {required AddCategoryModel addCategoryModel});
  Future<Either<ErrorMsg, UpdateCategoryRespModel>> updateCategory(
      {required UpdateCategoryModel updateCategoryModel});

  Future<Either<ErrorMsg, AddCategoryRespModel>> addCategoryImage(
      {required AddCategoryModel addCategoryModel,
      required FormData formData});

  Future<Either<ErrorMsg, BlockUnlbockResponseModel>> blockCategory(
      {required BlockAndUnblockCategoryModelQurrey
          blockAndUnblockCategoryModelQurrey});

  Future<Either<ErrorMsg, BlockUnlbockResponseModel>> unblockCategory(
      {required BlockAndUnblockCategoryModelQurrey
          blockAndUnblockCategoryModelQurrey});
}
