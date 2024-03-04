import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/domain/models/order/update_order_status/update_order_status_qurrey/update_order_status_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_model.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({super.key, required this.data});

  final GetOrderModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppbar(title: 'Order Detail'),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderDetailItemTile(product: data),
                    const Divider(),
                    Text(
                      'TOTAL AMOUNT : ₹ ${data.productPrice}',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    kHeightTen,
                    Text(
                      '${data.paymentMethod}',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text('${data.deliveryAddress}'),
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
                            return DropdownMenuItem(
                              value: statusId,
                              child: Text(
                                entry.value,
                                style: const TextStyle(color: kBlue),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            context.read<OrderBloc>().add(
                                  OrderEvent.updateStatus(
                                    updateOrderStatusQurreyModel:
                                        UpdateOrderStatusQurreyModel(
                                      orderId: data.orderId,
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
                        data.paymentMethod!,
                        style: const TextStyle(color: kRed),
                      ),
                    ]),
                  ],
                ),
              ),
            );
        },
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
          decoration: BoxDecoration(
            image: product.images != null
                ? DecorationImage(
                    image: NetworkImage(
                      product.images!['urls'].first,
                    ),
                  )
                : null,
            boxShadow: [
              BoxShadow(
                color: kBlack.withOpacity(0.8),
                blurRadius: 1.5,
                offset: const Offset(0, 2),
              )
            ],
            color: kWhite,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
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
