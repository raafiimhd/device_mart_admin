import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';

import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key, required this.inventoryModel});
  final GetInventoryModel inventoryModel;
  @override
  Widget build(BuildContext context) {
    context.read<InventoryBloc>().add(InventoryEvent.getInventoryCall(
        getResponseQurrey: GetResponseQurrey(page: 1, count: 30)));
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
                '${inventoryModel.prdctName} Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 200,
              decoration:
                  inventoryModel.images != null
                      ? BoxDecoration(
                          color: kWhite,
                          image: DecorationImage(
                              image: NetworkImage(inventoryModel.images!['urls'].first)))
                      : null,
            ),
            kHeightTen,
            Text(inventoryModel.prdctName!,
                style: kronOne()),
            kHeightFive,
            Row(children: [
              Text(
                '₹${inventoryModel.price!.roundToDouble()}',
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
                inventoryModel.prdctDescp!,
                style: const TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
