import 'package:device_mart/application/presentation/home/screen_home.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/application/presentation/coupon/screen_coupon.dart';
import 'package:device_mart/application/presentation/dashboard/dashboard.dart';
import 'package:device_mart/application/presentation/main_page/widgets/bottom_nav.dart';
import 'package:device_mart/application/presentation/order/screen_order.dart';
import 'package:device_mart/application/presentation/settings/screen_settings.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    const HomeScreen(),
    const ScreenDashBoard(),
    const ScreenOrder(),
    const ScreenCoupon(),
    const ScreenSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
