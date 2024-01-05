import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart';
import 'package:device_mart/application/presentation/coupon/widgets/coupon_add_screen.dart';
import 'package:device_mart/application/presentation/coupon/widgets/coupon_list_view.dart';
import 'package:device_mart/application/presentation/widgets/add_button/add_button.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenCoupon extends StatelessWidget {
  const ScreenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CouponBloc>().add(const CouponEvent.getCoupon());
    });
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(title: 'Coupons')),
      body: BlocConsumer<CouponBloc, CouponState>(listener: (context, state) {
        if (state.hasError) {
          showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreen);
        }
      }, builder: (context, state) {
        if (state.isLoading) {
          return Center(child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
        }
        return const CouponListView();
      }),
      floatingActionButton: AddButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AddCouponScreen()));
          }),
    );
  }
}
