import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart';
import 'package:device_mart/application/presentation/coupon/widgets/coupon_text_form_field.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateCouponScreen extends StatelessWidget {
  const UpdateCouponScreen({
    super.key,
    required this.id,
    required this.initialCouponName,
    required this.initialCode,
    required this.initialMinValue,
    required this.initialDisCountMax,
    required this.initialDisCountPer,
  });
  final int id;
  final String initialCouponName;
  final String initialCode;
  final int initialMinValue;
  final int initialDisCountMax;
  final int initialDisCountPer;
  @override
  Widget build(BuildContext context) {
    final couponBloc = context.read<CouponBloc>();
    couponBloc.couponNameController.text = initialCouponName;
    couponBloc.couponCode.text = initialCode;
    couponBloc.discountMaxController.text = initialDisCountMax.toString();
    couponBloc.discountPercentage.text = initialDisCountPer.toString();
    couponBloc.minValueController.text = initialMinValue.toString();

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(
            title: 'Update Coupon',
          )),
      body: BlocConsumer<CouponBloc, CouponState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          return Form(
            key: couponBloc.couponKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomCouponTextFormFieldWidget(
                      hintText: 'coupon name',
                      controller: couponBloc.couponNameController,
                      keyboardType: TextInputType.name),
                  CustomCouponTextFormFieldWidget(
                      hintText: 'code',
                      controller: couponBloc.couponCode,
                      keyboardType: TextInputType.text),
                  CustomCouponTextFormFieldWidget(
                      hintText: 'min order value',
                      controller: couponBloc.minValueController,
                      keyboardType: TextInputType.number),
                  CustomCouponTextFormFieldWidget(
                      hintText: 'discount max amount',
                      controller: couponBloc.discountMaxController,
                      keyboardType: TextInputType.number),
                  CustomCouponTextFormFieldWidget(
                      hintText: 'discount perecentage',
                      controller: couponBloc.discountPercentage,
                      keyboardType: TextInputType.number),
                  CustomCouponTextFormFieldWidget(
                      hintText: 'validaty days',
                      controller: couponBloc.validcontroller,
                      keyboardType: TextInputType.number),
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(kGreen),
                    ),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (couponBloc.couponKey.currentState!.validate()) {
                        couponBloc.add(CouponEvent.updateCoupon(
                            updateCouponModel: UpdateCouponModel(
                          couponName:
                              couponBloc.couponNameController.text.trim(),
                          minOrderValue: int.parse(
                              couponBloc.minValueController.text.trim()),
                          code: couponBloc.couponCode.text.trim(),
                          discountMaxAmount: int.parse(
                              couponBloc.discountMaxController.text.trim()),
                          discountPercentage: int.parse(
                              couponBloc.discountPercentage.text.trim()),
                          id: id,
                        )));
                        Navigator.of(context).pop();
                      }
                    },
                    icon: const Icon(
                      Icons.add,
                      color: kBlack,
                    ),
                    label: const Text(
                      'update Coupon',
                      style: TextStyle(color: kBlack),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
