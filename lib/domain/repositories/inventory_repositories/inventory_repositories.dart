import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_image_qurrey_model/add_inventory_image_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_model.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_resp.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_qurrey/block_and_unblock_qurrey.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_resp/block_and_unblock_resp.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_resp_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_management_resp_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_model/update_invetory_model.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_resp_model/update_inventory_resp_model.dart';
import 'package:dio/dio.dart';

abstract class InventoryRepositery {
  Future<Either<ErrorMsg, GetInventoryRespModel>> getInventory(
      {required GetResponseQurrey getResponseQurrey});
  Future<Either<ErrorMsg, AddInventoryRespModel>> addInventory(
      {required AddInventoryModel addInventoryModel});
  Future<Either<ErrorMsg, AddInventoryRespModel>> addProductImage(
      {required FormData formData,
      required AddInventoryImageQurreyModel addInventoryImageQurreyModel});
  Future<Either<ErrorMsg, UpdateInventoryRespModel>> updateInventory(
      {required UpdateInventoryModel updateInventoryModel});

  Future<Either<ErrorMsg, BlockAndUnblockRespModel>> blockInventory(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey});
  Future<Either<ErrorMsg, BlockAndUnblockRespModel>> unblockInventory(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey});
  Future<Either<ErrorMsg, GetManagementRespModel>> getManagement(
      {required GetQurreyModel getQurreyModel,
      required GetResponseQurrey getResponseQurrey});
}
