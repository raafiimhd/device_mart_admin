import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/category_adder.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/add_inventory_button.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/custom_form_field.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key, required this.inventory});
  final GetInventoryModel inventory;
  @override
  Widget build(BuildContext context) {
    final prdctBloc = context.read<InventoryBloc>();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppbar(
            title: 'AddProductScreen',
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: prdctBloc.inventoryKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CustomProductTextFormFieldWidget(
                        hintText: 'Product Name',
                        controller: prdctBloc.productNameController,
                        keyboardType: TextInputType.name),
                    CustomProductTextFormFieldWidget(
                        hintText: 'Price',
                        controller: prdctBloc.productPriceController,
                        keyboardType: TextInputType.number),
                    CustomProductTextFormFieldWidget(
                      hintText: 'Product Description',
                      controller: prdctBloc.productDesc,
                      keyboardType: TextInputType.text,
                      maxlines: 3,
                    ),
                    kHeightTen,
                    const CategoryAdder(),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context
                    .read<InventoryBloc>()
                    .add(const InventoryEvent.postImage());
              },
              child: Column(
                children: [
                  BlocBuilder<InventoryBloc, InventoryState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Container(
                            height: sWidth * 0.5,
                            width: sWidth * 0.5,
                            decoration: const BoxDecoration(
                              color: kWhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: SizedBox(
                                width: double.infinity,
                                child: state.imageModel != null
                                    ? Image.file(state.imageModel!.fileImage)
                                    : Image.network(
                                        'https://www.shutterstock.com/image-vector/computer-notebook-mockup-transparent-screen-260nw-1099831238.jpg'),
                              ),
                            ),
                          ),
                          kHeightTwenty,
                          const Icon(Iconsax.image),
                          const Text('Select Image'),
                          kHeightTwenty,
                          InventoryElevatedButton(
                            id: inventory.categoryId,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
