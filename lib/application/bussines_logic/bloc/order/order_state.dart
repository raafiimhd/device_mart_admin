part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      GetOrderRespModel? getOrderRespModel,
      OrderRespModel? orderRespModel,
      UpdateOrderStatusRespModel? updateOrderStatusRespModel,
      List<GetOrderModel>? pending,
      List<GetOrderModel>? shipped,
      List<GetOrderModel>? delivered,
      List<GetOrderModel>? returned,
      List<GetOrderModel>? cancled}) = _Initial;
  factory OrderState.initial() =>
      const OrderState(hasError: false, isLoading: false, isDone: false);
}
