import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/presentation/order/widgets/order_list_view/order_list_view_details.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      },
      builder: (context, state) {
        final List<Map<String, dynamic>> dummyData = [
          {
            'productName': 'Dummy Product',
            'productPrice': '100',
            'deliveryAddress': 'Dummy Address',
            'orderStatus': 'Pending',
            'paymentMethod':'Dummy method'
          }
        ];
        final List<Map<String, dynamic>> orders =
            (state.getOrderRespModel?.data) ?? dummyData;
        if (orders.isEmpty) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final orderResp = orders[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrderManagement(
                                index: index,
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kWhite,
                      ),
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product name: ${orderResp['productName']}',
                              style: kronOne(),
                            ),
                            Text(
                              'Total price: ${orderResp['productPrice']}',
                              style: kronOne(),
                            ),
                            Text(
                              'Billing Address: ${orderResp['deliveryAddress']}',
                              style: kronOne(),
                            ),
                            Text('Payment Order: ${orderResp['paymentMethod']}',
                            style: kronOne(),
                            ),
                            Text(
                              'Order status: ${orderResp['orderStatus']}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: orders.length,
            ),
          );
        }
      },
    );
  }
}
