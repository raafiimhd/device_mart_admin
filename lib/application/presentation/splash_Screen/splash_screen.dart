import 'dart:async';

import 'package:device_mart/application/bussines_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String nextRoute =
          await context.read<SplashScreenCubit>().nextScreenRoute();
      Future.delayed(
        const Duration(milliseconds: 3000),
        () {
          Navigator.of(context).pushReplacementNamed(nextRoute);
        },
      );
    });
    return
    Scaffold(
      body: Center(
        child: Text(
          'Device Mart\n      Admin',
          style: kronOne(color: kWhite, fontSize: 0.10),
        ),
      ),
    );
  }
}
