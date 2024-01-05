import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_model.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_resp_model.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_qurrey_model/block_and_unblock_qurrey_model.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_resp_model.dart';
import 'package:device_mart/domain/models/coupon/get/get_coupon_model/get_coupon_resp_model.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_model.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_resp_model.dart';

abstract class CouponRepositery {
  Future<Either<ErrorMsg, GetCouponRespModel>> getCoupon();
  Future<Either<ErrorMsg, AddCouponRespModel>> addCouponModel(
      {required AddCouponModel addCouponModel});
  Future<Either<ErrorMsg, UpdateCouponRespModel>> updateCoupon(
      {required UpdateCouponModel updateCouponModel});
  Future<Either<ErrorMsg, BlockAndUnbockCouponRespModel>> blockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel});
   Future<Either<ErrorMsg, BlockAndUnbockCouponRespModel>> unBlockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel});
}
