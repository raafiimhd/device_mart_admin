import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart';
import 'package:device_mart/application/presentation/coupon/widgets/coupon_text_form_field.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCouponScreen extends StatelessWidget {
  const AddCouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final couponBloc = context.read<CouponBloc>();
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(
            title: 'Add Coupon',
          )),
      body: BlocConsumer<CouponBloc, CouponState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(context: context, message: state.message!, color: kRed);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
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
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kGreen),
                      ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (couponBloc.couponKey.currentState!.validate()) {
                          couponBloc.add(CouponEvent.addCoupon(
                              addCouponModel: AddCouponModel(
                            couponName:
                                couponBloc.couponNameController.text.trim(),
                            minOrderValue: int.parse(
                                couponBloc.minValueController.text.trim()),
                            code: couponBloc.couponCode.text.trim(),
                            discountMaxAmount: int.parse(
                                couponBloc.discountMaxController.text.trim()),
                            discountPercentage: int.parse(
                                couponBloc.discountPercentage.text.trim()),
                          )));
                          Navigator.of(context).pop();
                        }
                      },
                      icon: const Icon(
                        Icons.add,
                        color: kBlack,
                      ),
                      label: const Text(
                        'Add Coupon',
                        style: TextStyle(color: kBlack),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
