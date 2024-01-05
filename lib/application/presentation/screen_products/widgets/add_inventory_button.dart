
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/inventory_models/add/add_inventory_model/add_inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InventoryElevatedButton extends StatelessWidget {
  InventoryElevatedButton({super.key, this.id});
   int? id;
  @override
  Widget build(BuildContext context) {
    final prdctBloc = context.read<InventoryBloc>();
    return BlocConsumer<InventoryBloc, InventoryState>(
      listener: (context, state) {
        if (state.hasError) {
          showSnack(
              context: context,
              color: kRed,
              message: 'cannot add products, Something went wrong');
        }  
      },
      builder: (context, state) {
        return Align(
            alignment: Alignment.center,
            child: TextButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(kGreen),
              ),
              onPressed: () {
                if (state.categoryId == null) {
                  showSnack(
                      context: context,
                      color: kRed,
                      message: 'choose catogery and try again');
                  return;
                } else {
                  id = state.categoryId!;
                }
                if (state.imageModel == null) {
                  showSnack(
                      context: context,
                      color: kRed,
                      message: 'image is required to perform action');
                  return;
                }
                if (prdctBloc.inventoryKey.currentState!.validate()) {
                  prdctBloc.add(InventoryEvent.addInventory(
                    addInventoryModel: AddInventoryModel(
                      categoryId: state.categoryId!,
                      productName: prdctBloc.productNameController.text.trim(),
                      price: int.parse(
                          prdctBloc.productPriceController.text.trim()),
                      productDesc: prdctBloc.productDesc.text.trim(),
                    ),
                  ));
                  Navigator.of(context).pop();
                }
              },
              icon: const Icon(
                Icons.add,
                color: kBlack,
              ),
              label: const Text(
                'Add Product',
                style: TextStyle(color: kBlack),
              ),
            ));
      },
    );
  }
}
