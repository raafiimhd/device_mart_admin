import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/presentation/order/widgets/order_list_view/order_list_view.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/order/get_order_qurrey_model/get_order_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<OrderBloc>().add(OrderEvent.getOrder(
          getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 10)));
           });
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(title: 'Orders')),
      body: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
          }
          return const OrderListView();
        },
      ),
    );
  }
}
