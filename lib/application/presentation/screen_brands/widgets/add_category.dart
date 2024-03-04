import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/category_add_button.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.read<CategoryBloc>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppbar(
          title: 'Add Category',
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Form(
          key: categoryBloc.categoryKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
        ),
        InkWell(
          onTap: () {
            context.read<CategoryBloc>().add(const PickImages());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                return Column(
                  children: [
                    Container(
                        height: sWidth * 0.5,
                        width: sWidth * 0.5,
                        decoration: const BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: state.imageModel != null
                              ? Image.file(state.imageModel!.fileImage)
                              : Image.network(
                                  'https://www.shutterstock.com/image-vector/computer-notebook-mockup-transparent-screen-260nw-1099831238.jpg'),
                        )),
                    kHeightTwenty,
                    const Icon(Iconsax.image),
                    const Text('Select Image'),
                    kHeightTwenty,
                    const CategoryAddButton()
                  ],
                );
              }),
            ],
          ),
        )
      ])),
    );
  }
}
