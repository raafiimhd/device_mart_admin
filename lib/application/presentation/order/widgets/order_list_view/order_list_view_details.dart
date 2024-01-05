import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderManagement extends StatelessWidget {
  const OrderManagement({super.key, this.index});
  final int? index;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<OrderBloc>().add(OrderEvent.getOrderManagement(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 10)));
    });
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      },
      builder: (context, state) {
        if (state.orderRespModel == null) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else if (state.orderRespModel != null &&
            state.orderRespModel!.data != null) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Order Statuses:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              for (var status in state.orderRespModel!.data!.orderStatuses!)
                Text('${status.orderStatus}'),
              const Text(
                'Order Details:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                  itemBuilder: (context, index) {
                    final order = state.orderRespModel!.data!.orders![index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kWhite,
                        ),
                        width: 200,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Product name:${order.productName!}',
                                  style: kronOne(),
                                ),
                                Text(
                                  'Total price:${order.productPrice!}',
                                  style: kronOne(),
                                ),
                                Text(
                                  'Billing Address:${order.deliveryAddress!.toString()}',
                                  style: kronOne(),
                                ),
                                Text(
                                  'order status:${order.orderStatus!}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                
                                kHeightTwenty,
                                ElevatedButton(
                                  onPressed: () {
                                    context.read<OrderBloc>().add(
                                        OrderEvent.updateStatus(
                                            updateOrderStatusQurreyModel:
                                                UpdateOrderStatusQurreyModel(
                                                    orderId: order.orderId,
                                                    statusId: state
                                                        .orderRespModel!
                                                        .data!
                                                        .orderStatuses![index]
                                                        .id)));
                                  },
                                  child: const Text('Update Order Status'),
                                ),
                              ]),
                        ),
                      ),
                    );
                  },
                  itemCount: state.getOrderRespModel!.data!.length),
              Center(
                child: Text(
                  'Status-Change',
                  style: kronOne(),
                ),
              ),
              const Divider(),
            ]),
          );
        } else {
          return const Center(child: Text('no data avaliable '));
        }
      },
    );
  }
}
