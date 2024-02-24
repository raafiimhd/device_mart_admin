import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/presentation/order/widgets/order_list_view/order_list_view.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrderManagement(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
    });
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orders',
            style: kronOne(fontSize: 0.05),
          ),
          centerTitle: true,
          bottom: const TabBar(
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              indicatorColor: kBlack,
              tabs: [
                Tab(child: Text('Pending')),
                Tab(child: Text('Shipped')),
                Tab(child: Text('Delivered')),
                Tab(child: Text('Cancelled')),
                Tab(child: Text('Reterned'))
              ]),
        ),
        body: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.orderRespModel != null &&
                state.orderRespModel!.data != null &&
                state.orderRespModel!.data!.orders != null &&
                state.orderRespModel!.data!.orders!.isNotEmpty) {
              return TabBarView(children: [
                OrderListView(orderList: state.pending),
                OrderListView(orderList: state.shipped),
                OrderListView(orderList: state.delivered),
                OrderListView(orderList: state.cancled),
                OrderListView(orderList: state.returned),
              ]);
            } else {
              return Center(
                child: Text('Nothing to show'),
              );
            }
          },
        ),
      ),
    );
  }
}
