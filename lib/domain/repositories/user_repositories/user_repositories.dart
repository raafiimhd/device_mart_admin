import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_qurrey.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_resp_model.dart';
import 'package:device_mart/domain/models/user/user_qurrey_model/user_qurrey_model.dart';
import 'package:device_mart/domain/models/user/user_resp_model/user_resp_model.dart';

abstract class UserRepository {
  Future<Either<ErrorMsg, UserRespModel>> getUser(
      {required UserQurreyModel userQurreyModel});
  Future<Either<ErrorMsg, BlockAndUnblockUserRespModel>> blockUser(
      {required BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel});
  Future<Either<ErrorMsg, BlockAndUnblockUserRespModel>> unblockUser(
      {required BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel});
}
