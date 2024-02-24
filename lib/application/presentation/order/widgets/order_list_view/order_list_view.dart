import 'package:device_mart/application/presentation/order/widgets/order_list_view/order_list_view_details.dart';
import 'package:device_mart/domain/models/order/get_order_model/get_order_model.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({
    super.key,
    required this.orderList,
  });

  final List<GetOrderModel>? orderList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderList!.length,
      itemBuilder: (context, index) {
        final data = orderList![index];
        return ListTile(
          leading: CircleAvatar(child: Text(data.orderId.toString())),
          title: Text(data.productName!),
          subtitle: Text(data.paymentMethod!),
          trailing: Text(
            '₹ ${data.productPrice!.round().toString()}',
            style: const TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ScreenOrderDetail(orderId: data.orderId!, index: index)));
          },
        );
      },
    );
  }
}
