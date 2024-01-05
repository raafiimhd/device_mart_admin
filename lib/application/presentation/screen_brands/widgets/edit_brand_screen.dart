import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/models/category_model/update_category_all_model/update_category_model/update_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void editCategoryName(BuildContext context, int id, final String initialName) {
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
                    context.read<CategoryBloc>().add(
                        CategoryEvent.updateCategory(
                            updateCategoryModel: UpdateCategoryModel(
                                categoryName: context
                                    .read<CategoryBloc>()
                                    .categoryController
                                    .text
                                    .trim(),
                                id: id,)));
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
