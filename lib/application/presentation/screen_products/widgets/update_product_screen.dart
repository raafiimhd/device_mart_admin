import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/custom_form_field.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/inventory_models/update/update_inventory_model/update_invetory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProductscreen extends StatelessWidget {
  const UpdateProductscreen(
      {super.key,
      required this.id,
      required this.categoryId,
      required this.initialProductName,
      required this.initialProductPrice,
      required this.initialProductDesc});
  final int id;
  final int categoryId;
  final String initialProductName;
  final int initialProductPrice;
  final String initialProductDesc;
  @override
  Widget build(BuildContext context) {
    final prdctBloc = context.read<InventoryBloc>();
    prdctBloc.productNameController.text = initialProductName;
    prdctBloc.productPriceController.text = initialProductPrice.toString();
    prdctBloc.productDesc.text = initialProductDesc;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppbar(
            title: 'Update Product Screen',
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: BlocConsumer<InventoryBloc, InventoryState>(
          listener: (context, state) {
        if (state.hasError) {
          showSnack(context: context, message: 'State has Error', color: kRed);
        }
      }, builder: (context, state) {
        return Form(
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
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(kGreen),
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (prdctBloc.inventoryKey.currentState!.validate()) {
                      prdctBloc.add(InventoryEvent.updateProduct(
                          updateInventoryModel: UpdateInventoryModel(
                              prdctName: prdctBloc.productNameController.text,
                              price: int.parse(
                                  prdctBloc.productPriceController.text.trim()),
                              prdctDesc: prdctBloc.productDesc.text.trim(),
                              id: id,
                              categoryId: categoryId)));
                      Navigator.of(context).pop();
                    }
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: kBlack,
                  ),
                  label: const Text(
                    'Update Product',
                    style: TextStyle(color: kBlack),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
