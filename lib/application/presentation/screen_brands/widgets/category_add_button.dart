import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/category_model/add_category_all_model/add_category_model/add_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryAddButton extends StatelessWidget {
  const CategoryAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryBloc = context.read<CategoryBloc>();
    return BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
      if (state.hasError) {
        showSnack(
            context: context,
            color: kRed,
            message: 'Cannot add brands,Something Problem');
      }  else if (state.addCategoryRespModel != null) {
        showSnack(
            context: context, message: 'Succesfuly Add Brands', color: kGreen);
      }
    }, builder: (context, state) {
      return ElevatedButton.icon(
        onPressed: () {
          if (categoryBloc.categoryKey.currentState!.validate()) {
            if (state.imageModel == null) {
              showSnack(context: context, message: 'Image is Required',color: kRed);
            }
            context.read<CategoryBloc>().add(CategoryEvent.addCategory(
                    addCategoryModel: AddCategoryModel(
                  categoryName: context
                      .read<CategoryBloc>()
                      .categoryController
                      .text
                      .trim(),
                      
                )));

            Navigator.of(context).pop();
          }
        },
        icon: const Icon(Icons.add_a_photo),
        label: const Text('Add Brand'),
      );
    });
  }
}
