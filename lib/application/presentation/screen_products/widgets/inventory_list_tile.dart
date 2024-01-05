
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';

import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key, required this.state, required this.index});
  final InventoryState state;
  final int index;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppbar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
            title:
                '${state.getInventoryRespModel!.data![index].prdctName} Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 200,
              decoration:
                  state.getInventoryRespModel!.data![index].images != null
                      ? BoxDecoration(
                          color: kWhite,
                          image: DecorationImage(
                              image: NetworkImage(state.getInventoryRespModel!
                                  .data![index].images!['urls'].first)))
                      : null,
            ),
            kHeightTen,
            Text(state.getInventoryRespModel!.data![index].prdctName!,
                style: kronOne()),
            kHeightFive,
            Row(children: [
              Text(
                '₹${state.getInventoryRespModel!.data![index].price!.roundToDouble()}',
                style: priceStyle,
              ),
            ]),
            kHeightFive,
            const Divider(
              color: Color.fromARGB(255, 222, 215, 215),
            ),
            Text(
              'About this item',
              style: kronOne(),
            ),
            kHeightFive,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                state.getInventoryRespModel!.data![index].prdctDescp!,
                style: const TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
