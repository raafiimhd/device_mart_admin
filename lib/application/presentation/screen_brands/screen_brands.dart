import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/add_category.dart';
import 'package:device_mart/application/presentation/screen_brands/widgets/list_of_brands.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/models/category_model/get_category_all_model/get_category_qurrey_model/get_category_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenBrands extends StatelessWidget {
  const ScreenBrands({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryBloc>().add(CategoryEvent.getCategory(
          getCategoryQurreyModel: GetCategoryQurreyModel(page: 1, count: 30)));
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: CustomAppbar(
          title: 'All Brands',
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Iconsax.arrow_left,
                color: kBlack,
              )),
        ),
      ),
      body:
          BlocConsumer<CategoryBloc, CategoryState>(listener: (context, state) {
        if (state.hasError || state.isDone) {
          showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreen);
        }
      }, builder: (context, state) {
        if (state.isLoading) {
          return Center(
              child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
        } else if (state.getCatogereyResponseModel != null &&
            state.getCatogereyResponseModel!.data != null &&
            state.getCatogereyResponseModel!.data!.isNotEmpty) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0),
              itemCount: state.getCatogereyResponseModel!.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListOfBrands(
                  category: state.getCatogereyResponseModel!.data![index],
                  state: state,
                );
              });
        } else {
          return const Center(
            child: Text('no users data available'),
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => const AddCategoryScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
