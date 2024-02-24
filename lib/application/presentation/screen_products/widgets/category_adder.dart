import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_qurrey_model/get_category_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryAdder extends StatelessWidget {
  const CategoryAdder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        if (state.getCatogereyResponseModel == null ||
            state.getCatogereyResponseModel!.data == null) {
          // If categories are not loaded, fetch them
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            context.read<CategoryBloc>().add(CategoryEvent.getCategory(
                  getCategoryQurreyModel:
                      GetCategoryQurreyModel(page: 1, count: 30),
                ));
          });
        }

        return Row(
          children: [
            const Text(
              'Select ',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            DropdownButton<String>(
              value: context.watch<InventoryBloc>().state.catogory,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              items: (state.getCatogereyResponseModel?.data ?? [])
                  .map<DropdownMenuItem<String>>(
                (category) {
                  return DropdownMenuItem<String>(
                    value: category.categoryName,
                    child: Text(category.categoryName),
                  );
                },
              ).toList(),
              onChanged: (selectedCategory) {
                final categoryId = (state.getCatogereyResponseModel?.data ?? [])
                    .firstWhere(
                        (category) => category.categoryName == selectedCategory)
                    .id;
                context.read<InventoryBloc>().add(
                      InventoryEvent.selectCatogory(
                        selectedCatogory: categoryId,
                        catogory: selectedCategory!,
                      ),
                    );
              },
              hint: const Text(
                'Category',
                style: TextStyle(color: Colors.black),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ),
          ],
        );
      },
    );
  }
}
