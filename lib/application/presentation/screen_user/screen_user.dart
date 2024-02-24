import 'package:device_mart/application/bussines_logic/bloc/user/user_bloc.dart';
import 'package:device_mart/application/presentation/screen_user/user_list_view.dart';
import 'package:device_mart/application/presentation/widgets/show_snackbar/show_snackbar.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/domain/models/user/user_qurrey_model/user_qurrey_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ScreenUser extends StatelessWidget {
  const ScreenUser({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<UserBloc>().add(UserEvent.getUser(
          userQurreyModel: UserQurreyModel(page: 1, count: 10)));
    });
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppbar(
            title: 'User',
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: kBlack,
                )),
          )),
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state.isBlocked || state.isUnblocked || state.hasError) {
            showSnack(
                context: context,
                message: state.message!,
                color: state.isBlocked || state.hasError ? kRed : kGreen);
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
          } else if (state.userRespModel != null &&
              state.userRespModel!.data != null &&
              state.userRespModel!.data!.isNotEmpty) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: state.userRespModel!.data!.length,
              itemBuilder: (context, index) {
                return UserListView(
                  user: state.userRespModel!.data![index],
                );
              },
              separatorBuilder: (context, index) => kHeightTen,
            );
          } else {
            return const Center(
              child: Text('no users data available'),
            );
          }
        },
      ),
    );
  }
}
