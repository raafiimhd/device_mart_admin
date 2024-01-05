part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
   required bool isLoading,
   required bool hasError,
   String?message,
   GetOrderRespModel?getOrderRespModel,
   OrderRespModel?orderRespModel,
   UpdateOrderStatusRespModel?updateOrderStatusRespModel
  }) = _Initial;
    factory OrderState.initial() => const OrderState(
      hasError: false,
      isLoading: false,
    );

}
