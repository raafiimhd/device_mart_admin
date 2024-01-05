
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/presentation/screen_products/widgets/inventory_list_tile.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_management_model/get_qurrey_model.dart';
import 'package:device_mart/domain/models/inventory_models/get/get_resp_qurrey_model/get_resp_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryUnderProducts extends StatelessWidget {
  const CategoryUnderProducts({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<InventoryBloc>().add(InventoryEvent.getManagement(
          getResponseQurrey: GetResponseQurrey(page: 1, count: 30),
          getQurreyModel: GetQurreyModel(id: id)));
    });
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppbar(
            title: 'All products',
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: BlocBuilder<InventoryBloc, InventoryState>(
        builder: (context, state) {
          if (state.getManagementRespModel == null) {
            return const Center(
              child: Text('nothing to show'),
            );
          }
          
          else if (state.getManagementRespModel != null &&
              state.getManagementRespModel!.data != null &&
              state.getManagementRespModel!.data!.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: state.getManagementRespModel!.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  final prdctState = state.getManagementRespModel!.data![index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsScreen(
                            state: state,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 140,
                            decoration: prdctState.images != null
                                ? BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        prdctState.images!['urls'].first,
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            prdctState.productName!,
                            overflow: TextOverflow.ellipsis,
                            style: kronOne(),
                          ),
                          Text(
                            '₹${prdctState.price!.roundToDouble()}',
                            style: priceStyle,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                prdctState.productDes!,
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
                },
              ),
            );
          }else {
            return const Center(child: Text('no data available '));
          }
        },
      ),
    );
  }
}
