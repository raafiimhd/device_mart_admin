import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/add_products_screen.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/list_of_inventories.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';


class ScreenProducts extends StatelessWidget {
  ScreenProducts({
    super.key,
  });
  late GetInventoryModel selectedInventory = GetInventoryModel();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<InventoryBloc>().add(
            InventoryEvent.getInventoryCall(
              getResponseQurrey: GetResponseQurrey(page: 1, count: 30),
            ),
          );
    });

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppbar(
          title: 'All Products',
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Iconsax.arrow_left,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: BlocConsumer<InventoryBloc, InventoryState>(
        listener: (context, state) {
          if (state.hasError) {
            showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreen,
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25),
            );
          } else if (state.getInventoryRespModel != null &&
              state.getInventoryRespModel!.data != null &&
              state.getInventoryRespModel!.data!.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: state.getInventoryRespModel!.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListOfProducts(
                    state: state,
                    index: index,
                    inventory: state.getInventoryRespModel!.data![index],
                    onSelect: (selectedInventory) {
                      this.selectedInventory = selectedInventory;
                    },
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: Text('Products Is Empty'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => AddProductScreen(inventory: selectedInventory),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
