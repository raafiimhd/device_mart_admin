import 'package:device_mart/application/presentation/coupon/screen_coupon.dart';
import 'package:device_mart/application/presentation/dashboard/dashboard.dart';
import 'package:device_mart/application/presentation/home/screen_home.dart';
import 'package:device_mart/application/presentation/main_page/screen_main_page.dart';
import 'package:device_mart/application/presentation/order/screen_order.dart';
import 'package:device_mart/application/presentation/routes/routes.dart';
import 'package:device_mart/application/presentation/screen_brands/screen_brands.dart';
import 'package:device_mart/application/presentation/screen_products/screen_inventory.dart';
import 'package:device_mart/application/presentation/screen_user/screen_user.dart';
import 'package:device_mart/application/presentation/settings/screen_settings.dart';
import 'package:device_mart/application/presentation/sign_in/sign_in.dart';
import 'package:device_mart/application/presentation/splash_Screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const LoginScreen());
      case Routes.mainpage:
        return MaterialPageRoute(builder: (ctx) => ScreenMainPage());
      case Routes.home:
        return MaterialPageRoute(
          builder: (ctx) => const HomeScreen(),
        );
      case Routes.dashboard:
        return MaterialPageRoute(builder: (ctx) => const ScreenDashBoard());
      case Routes.order:
        return MaterialPageRoute(builder: (ctx) => const ScreenOrder());
      case Routes.coupon:
        return MaterialPageRoute(builder: (ctx) => const ScreenCoupon());
      case Routes.settings:
        return MaterialPageRoute(builder: (ctx) => const ScreenSettings());

      case Routes.brands:
        return MaterialPageRoute(builder: (ctx) => const ScreenBrands());
      case Routes.products:
        return MaterialPageRoute(builder: (ctx) =>  ScreenProducts());
      case Routes.user:
        return MaterialPageRoute(builder: (ctx) =>  const ScreenUser());
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}
