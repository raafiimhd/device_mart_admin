import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_model.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail(
      {super.key, required this.orderId, required this.index});

  final int orderId;
  final int index;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrder(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(title: 'Order Detail')),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                if (state.hasError || state.isDone) {
                  showSnack(
                    context: context,
                    message: state.message!,
                    color: state.hasError ? kRed : kGreen,
                  );
                }
              },
              buildWhen: (p, c) =>
                  p.isDone != true ||
                  p.hasError != true ||
                  c.isDone != true ||
                  c.hasError != true,
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(
                      child: LoadingAnimationWidget.inkDrop(
                          color: kWhite, size: 25));
                } else if (state.getOrderRespModel != null &&
                    state.getOrderRespModel!.data!.isNotEmpty &&
                    state.getOrderRespModel!.data != null) {
                  final order = state.getOrderRespModel!.data;
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: order!.length,
                          itemBuilder: (context, index) =>
                              OrderDetailItemTile(product: order[index]),
                          separatorBuilder: (context, index) => kHeightFive,
                        ),
                        const Divider(),
                        Text(
                          'TOTAL AMOUNT : ₹ ${order[index].productPrice}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        kHeightTen,
                        Text(
                          '${order[index].paymentMethod}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('${order[index].deliveryAddress}'),
                        kHeightTen,
                        Row(
                          children: [
                            const Text('Update Order Status : '),
                            DropdownButton(
                              value: context.read<OrderBloc>().currentStatus,
                              items: context
                                  .read<OrderBloc>()
                                  .status
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                int statusId = entry.key + 1;
                                String statusText = entry.value;
                                return DropdownMenuItem(
                                  value: statusId,
                                  child: Text(
                                    statusText,
                                    style: TextStyle(color: kBlue),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                context.read<OrderBloc>().add(
                                      OrderEvent.updateStatus(
                                        updateOrderStatusQurreyModel:
                                            UpdateOrderStatusQurreyModel(
                                          orderId: orderId,
                                          statusId: value,
                                        ),
                                      ),
                                    );
                              },
                            ),
                          ],
                        ),
                        Row(children: [
                          const Text('Payment Status : '),
                          Text(
                            order[index].paymentMethod!,
                            style: const TextStyle(color: kRed),
                          ),
                        ]),
                        if (state.isLoading)
                          Center(
                              child: LoadingAnimationWidget.inkDrop(
                                  color: kWhite, size: 25))
                      ]);
                } else {
                  return const Center(
                      child: Text('Network Error Occured,Please try again'));
                }
              },
            )),
      ),
    );
  }
}

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
    required this.product,
  });

  final GetOrderModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: sWidth * 0.22,
            width: sWidth * 0.18,
            decoration: product.images != null
                ? BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        product.images!['urls'].first,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: kBlack.withOpacity(0.8),
                          blurRadius: 1.5,
                          offset: const Offset(0, 2))
                    ],
                    color: kWhite,
                    borderRadius: const BorderRadius.all(Radius.circular(10)))
                : null),
        kwidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: sWidth * 0.60,
              child: Text(
                product.productName!,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            kHeightTen,
            Row(
              children: [
                const Text('Amount : '),
                Text(
                  '₹ ${product.productPrice}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            kHeightFive,
          ],
        ),
      ],
    );
  }
}
