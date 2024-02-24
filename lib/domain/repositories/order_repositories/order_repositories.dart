import 'package:dartz/dartz.dart';
import 'package:device_mart/domain/core/constants/error/error_msg.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_resp_model.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:device_mart/domain/models/order/order_resp_model/order_resp_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_resp_model/update_order_status_resp_model.dart';

abstract class OrderRepository {
  Future<Either<ErrorMsg, GetOrderRespModel>> getOrder(
      {required GetOrderQurreyModel getOrderQurreyModel});
  Future<Either<ErrorMsg, OrderRespModel>> getManagementOrder(
      {required GetOrderQurreyModel getOrderQurreyModel});
  Future<Either<ErrorMsg, UpdateOrderStatusRespModel>> updateOrderStatus(
      {required UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel});
}
