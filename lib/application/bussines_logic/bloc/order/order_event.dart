part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrder(
      {required GetOrderQurreyModel getOrderQurreyModel}) = GetOrder;
  const factory OrderEvent.getOrderManagement(
      {required GetOrderQurreyModel getOrderQurreyModel}) = GetOrderManagement;
  const factory OrderEvent.updateStatus(
      {required UpdateOrderStatusQurreyModel
          updateOrderStatusQurreyModel}) = UpdateOrder;
}
