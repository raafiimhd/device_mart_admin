import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/category_under_products.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/edit_brand_screen.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_category_model_qurrey/block_and_unblock_category_model_qurrey.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_model/get_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfBrands extends StatelessWidget {
  const ListOfBrands({super.key, required this.category, required this.state});
  final GetCategoryModel category;
  final CategoryState state;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => CategoryUnderProducts(
                            id: category.id
                                )));
          },
          child: Container(
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(10)),
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
                                    category.isBlocked ? 'Unblock' : 'Block'),
                                onTap: () {
                                  if (category.isBlocked) {
                                    context.read<CategoryBloc>().add(
                                          CategoryEvent.unBlockCategory(
                                            blockUnblockUserQurrey:
                                                BlockAndUnblockCategoryModelQurrey(
                                              id: category.id,
                                            ),
                                          ),
                                        );
                                  } else {
                                    context.read<CategoryBloc>().add(
                                          CategoryEvent.blockCategory(
                                            blockUnblockUserQurrey:
                                                BlockAndUnblockCategoryModelQurrey(
                                              id: category.id,
                                            ),
                                          ),
                                        );
                                  }
                                },
                              ),
                              PopupMenuItem(
                                child: const Text('Edit Brand Name'),
                                onTap: () {
                                  editCategoryName(context, category.id,
                                      category.categoryName);
                                },
                              )
                            ])),
                Container(
                  height: 100,
                  width: 140,
                  decoration: category.images != null
                      ? BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(category.images!['urls'].first)))
                      : null,
                ),
                Text(
                  category.categoryName,
                  style: kronOne(),
                ),
              ],
            ),
          ),
        ));
  }
}
