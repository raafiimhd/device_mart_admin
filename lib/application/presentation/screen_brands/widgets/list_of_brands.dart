import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/category_under_products.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/category_model/block_and_unblock_model/block_category_model_qurrey/block_and_unblock_category_model_qurrey.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_model/get_category_model.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_model/update_category_model.dart';
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => CategoryUnderProducts(id: category.id)));
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
                                  })
                            ])),
                Container(
                  height: 100,
                  width: 140,
                  decoration: BoxDecoration(
                    image: category.images != null
                        ? DecorationImage(
                            image: NetworkImage(category.images!['urls'].first),
                            fit: BoxFit.cover,
                          )
                        : const DecorationImage(
                            image: NetworkImage(
                                'https://www.shutterstock.com/image-vector/computer-notebook-mockup-transparent-screen-260nw-1099831238.jpg'),
                            
                          ),
                    borderRadius: BorderRadius.circular(10),
                  ),
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

  void editCategoryName(
      BuildContext context, int id, final String initialName) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final categoryBloc = context.read<CategoryBloc>();
          categoryBloc.categoryController.text = initialName;
          return AlertDialog(
              title: const Text('Edit Brand Name'),
              content: Form(
                key: categoryBloc.categoryKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter brand name';
                    } else {
                      return null;
                    }
                  },
                  controller: categoryBloc.categoryController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kWhite,
                    hintText: 'Enter brand name ',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(kGreen),
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (categoryBloc.categoryKey.currentState!.validate()) {
                      context
                          .read<CategoryBloc>()
                          .add(CategoryEvent.updateCategory(
                              updateCategoryModel: UpdateCategoryModel(
                            categoryName: context
                                .read<CategoryBloc>()
                                .categoryController
                                .text
                                .trim(),
                            id: id,
                          )));
                      Navigator.of(context).pop();
                    }
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: kBlack,
                  ),
                  label: const Text(
                    'Edit Category',
                    style: TextStyle(color: kBlack),
                  ),
                )
              ]);
        });
  }
}
