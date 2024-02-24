import 'package:device_mart/application/bussines_logic/bloc/auth/auth_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/sales_report/report_bloc.dart';
import 'package:device_mart/application/bussines_logic/bloc/user/user_bloc.dart';
import 'package:device_mart/application/bussines_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart';
import 'package:device_mart/application/presentation/routes/routes.dart';
import 'package:device_mart/application/presentation/routes/app_routes.dart';
import 'package:device_mart/data/data_provider/configue_injection/configue_injection.dart';
import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(DeviceMartAdminApp(
    appRouteGenerator: AppRoute(),
  ));
}

class DeviceMartAdminApp extends StatelessWidget {
  const DeviceMartAdminApp({super.key, required this.appRouteGenerator});

  final AppRoute appRouteGenerator;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SplashScreenCubit>(),
        ),
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
        BlocProvider(create: (context) => getIt<InventoryBloc>()),
        BlocProvider(create: (context) => getIt<CouponBloc>()),
        BlocProvider(create: (context) => getIt<UserBloc>()),
        BlocProvider(create: (context) => getIt<OrderBloc>()),
        BlocProvider(create: (context) => getIt<ReportBloc>())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: kWhite,
        ),
        initialRoute: Routes.initial,
        onGenerateRoute: appRouteGenerator.onGenerateRoute,
      ),
    );
  }
}
