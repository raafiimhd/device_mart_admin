import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart';
import 'package:device_mart/application/presentation/coupon/widgets/coupon_update_screen.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_qurrey_model/block_and_unblock_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouponListView extends StatelessWidget {
  const CouponListView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<CouponBloc, CouponState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: state.message!, color: kRed);
        }
      },
      builder: (context, state) {
        if (state.getCouponRespModel == null) {
          return const Center(
            child: Text('Nothing to show'),
          );
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final coupon = state.getCouponRespModel!.data![index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 222, 221, 221),
                                offset: Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ),
                              BoxShadow(
                                color: kWhite,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: screenWidth,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coupon.couponName!,
                                  style: kronOne(),
                                ),
                                Text(
                                  coupon.code!,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: AutofillHints.oneTimeCode,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Min Order Value: ${coupon.minOrderValue!.roundToDouble()}',
                                  style: const TextStyle(
                                    fontFamily: AutofillHints.password,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Discount Max Amount:${coupon.discountMaxAmount!.roundToDouble()}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontFamily: AutofillHints.creditCardNumber,
                                  ),
                                ),
                                Text(
                                  'Discount Max Percentage:${coupon.discountPercentage}%',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          AutofillHints.creditCardNumber),
                                ),
                                Text(
                                    'Valid Days:${coupon.validFrom}/${coupon.validTill}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: PopupMenuButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          icon: const Icon(
                            Icons.more_vert,
                            color: kBlack,
                          ),
                          itemBuilder: (context) => [
                            !state.isBlocked
                                ? PopupMenuItem(
                                    child: const Text('block'),
                                    onTap: () {
                                      context.read<CouponBloc>().add(
                                          CouponEvent.blockCoupon(
                                              blockAndUnblockCouponQurreyModel:
                                                  BlockAndUnblockCouponQurreyModel(
                                                      id: state
                                                          .getCouponRespModel!
                                                          .data![index]
                                                          .id)));
                                    },
                                  )
                                : PopupMenuItem(
                                    child: const Text('unblock'),
                                    onTap: () {
                                      context.read<CouponBloc>().add(
                                          CouponEvent.unblockCoupon(
                                              blockAndUnblockCouponQurreyModel:
                                                  BlockAndUnblockCouponQurreyModel(
                                                      id: state
                                                          .getCouponRespModel!
                                                          .data![index]
                                                          .id)));
                                    },
                                  ),
                            PopupMenuItem(
                              child: const Text('Update'),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => UpdateCouponScreen(
                                        id: coupon.id!,
                                        initialCouponName: coupon.couponName!,
                                        initialCode: coupon.code!,
                                        initialMinValue: coupon.minOrderValue!,
                                        initialDisCountMax:
                                            coupon.discountMaxAmount!,
                                        initialDisCountPer:
                                            coupon.discountPercentage!)));
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: state.getCouponRespModel!.data!.length,
              ),
            ),
          );
        }
      },
    );
  }
}
