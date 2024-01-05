import 'package:bloc/bloc.dart';
import 'package:device_mart/data/data_provider/order_provider/order_provider.dart';
import 'package:device_mart/domain/core/repositories/order_repositories/order_repositories.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_resp_model.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:device_mart/domain/models/order/order_resp_model/order_resp_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_resp_model/update_order_status_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderRepository orderRepository;
  final OrderProvider orderProvider =
      OrderProvider(Dio(), const FlutterSecureStorage());
  OrderBloc(this.orderRepository) : super(OrderState.initial()) {
    on<GetOrder>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        message: null
      ));
      final result = await orderProvider.getOrder(
          getOrderQurreyModel: event.getOrderQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                isLoading: false,
                message: failure.message,
              )),
          (resp) => emit(state.copyWith(
                isLoading: false,
                hasError: false,
                getOrderRespModel: resp,
                message: resp.message,
              )));
    });
    on<GetOrderManagement>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await orderProvider.getManagementOrder(
          getOrderQurreyModel: event.getOrderQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                isLoading: false,
                message: 'can\'t connect to server, something went wrong',
              )),
          (resp) => emit(state.copyWith(
                isLoading: false,
                hasError: false,
                orderRespModel: resp,
                message: resp.message,
              )));
    });
    on<UpdateOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.updateOrderStatus(
          updateOrderStatusQurreyModel: event.updateOrderStatusQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                isLoading: false,
                message: 'Something Error',
              )), (resp) {
        emit(state.copyWith(
            hasError: false,
            isLoading: false,
            message: resp.message,
            updateOrderStatusRespModel: resp));
        add(OrderEvent.getOrderManagement(getOrderQurreyModel: GetOrderQurreyModel()));
      });
    });
  }
}
