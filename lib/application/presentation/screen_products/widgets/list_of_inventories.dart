import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/inventory_list_tile.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_inventory_model/get_inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/update_product_screen.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/inventory_models/block_and_unblock/block_and_unblock_qurrey/block_and_unblock_qurrey.dart';

class ListOfProducts extends StatelessWidget {
  ListOfProducts(
      {super.key,
      required this.state,
      required this.inventory,
      required this.onSelect,
      required this.index});
  InventoryState state;
  int index;
  GetInventoryModel inventory;
  final Function(GetInventoryModel) onSelect;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(GetInventoryModel(id: inventory.id));
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ProductDetailsScreen(state: state, index: index)));
      },
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                icon: const Icon(Icons.more_vert, color: kBlack),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(
                        inventory.isBlocked ?? false ? 'Unblock' : 'Block'),
                    onTap: () {
                      if (inventory.isBlocked ?? false) {
                        context.read<InventoryBloc>().add(
                              InventoryEvent.unBlockProduct(
                                blockAndUnblockQurrey: BlockAndUnblockQurrey(
                                  id: inventory.id,
                                ),
                              ),
                            );
                      } else {
                        context.read<InventoryBloc>().add(
                              InventoryEvent.blockProduct(
                                blockAndUnblockQurrey: BlockAndUnblockQurrey(
                                  id: inventory.id,
                                ),
                              ),
                            );
                      }
                    },
                  ),
                  PopupMenuItem(
                    child: const Text('Update Product'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => UpdateProductscreen(
                            id: inventory.id!,
                            initialProductName: inventory.prdctName!,
                            initialProductPrice: inventory.price!,
                            initialProductDesc: inventory.prdctDescp!,
                            categoryId: inventory.categoryId!,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 140,
              decoration: inventory.images != null
                  ? BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          inventory.images!['urls'].first,
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(height: 20),
            Text(
              inventory.prdctName!,
              overflow: TextOverflow.ellipsis,
              style: kronOne(),
            ),
            Text(
              '₹${inventory.price!.roundToDouble()}',
              style: priceStyle,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  inventory.prdctDescp!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
