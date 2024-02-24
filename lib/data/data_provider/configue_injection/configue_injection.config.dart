// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_mart/application/bussines_logic/bloc/auth/auth_bloc.dart'
    as _i24;
import 'package:device_mart/application/bussines_logic/bloc/category/category_bloc.dart'
    as _i25;
import 'package:device_mart/application/bussines_logic/bloc/coupon/coupon_bloc.dart'
    as _i26;
import 'package:device_mart/application/bussines_logic/bloc/inventory/inventory_bloc.dart'
    as _i20;
import 'package:device_mart/application/bussines_logic/bloc/order/order_bloc.dart'
    as _i21;
import 'package:device_mart/application/bussines_logic/bloc/sales_report/report_bloc.dart'
    as _i22;
import 'package:device_mart/application/bussines_logic/bloc/user/user_bloc.dart'
    as _i23;
import 'package:device_mart/application/bussines_logic/cubit/splash_screen_cubit/splash_screen_cubit.dart'
    as _i11;
import 'package:device_mart/data/data_provider/auth_provider/auth_provider.dart'
    as _i15;
import 'package:device_mart/data/data_provider/category_provider/category_provider.dart'
    as _i17;
import 'package:device_mart/data/data_provider/coupon_provider/coupon_provider.dart'
    as _i19;
import 'package:device_mart/data/data_provider/inventory_provider/inventory_provider.dart'
    as _i6;
import 'package:device_mart/data/data_provider/module/dio_module.dart' as _i27;
import 'package:device_mart/data/data_provider/module/secure_storage_module.dart'
    as _i28;
import 'package:device_mart/data/data_provider/order_provider/order_provider.dart'
    as _i8;
import 'package:device_mart/data/data_provider/sales_report_provider/sales_report_provider.dart'
    as _i10;
import 'package:device_mart/data/data_provider/user_provider/user_provider.dart'
    as _i13;
import 'package:device_mart/domain/repositories/auth_repositories/auth_repositories.dart'
    as _i14;
import 'package:device_mart/domain/repositories/category_repositories/category_repositories.dart'
    as _i16;
import 'package:device_mart/domain/repositories/coupon_repositories/coupon_repositories.dart'
    as _i18;
import 'package:device_mart/domain/repositories/inventory_repositories/inventory_repositories.dart'
    as _i5;
import 'package:device_mart/domain/repositories/order_repositories/order_repositories.dart'
    as _i7;
import 'package:device_mart/domain/repositories/report_repositories/report_repositories.dart'
    as _i9;
import 'package:device_mart/domain/repositories/user_repositories/user_repositories.dart'
    as _i12;
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => secureStorageModule.flutterSecureStorage);
    gh.lazySingleton<_i5.InventoryRepositery>(() => _i6.InventoryProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i7.OrderRepository>(() => _i8.OrderProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i9.SalesReportRepository>(() => _i10.SalesReportProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i11.SplashScreenCubit>(
        () => _i11.SplashScreenCubit(gh<_i4.FlutterSecureStorage>()));
    gh.lazySingleton<_i12.UserRepository>(() => _i13.UserProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i14.AuthRepository>(() => _i15.AuthProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i16.CategoryRepository>(() => _i17.CategoryProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i18.CouponRepositery>(() => _i19.CouponProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i20.InventoryBloc>(
        () => _i20.InventoryBloc(gh<_i5.InventoryRepositery>()));
    gh.factory<_i21.OrderBloc>(() => _i21.OrderBloc(gh<_i7.OrderRepository>()));
    gh.factory<_i22.ReportBloc>(
        () => _i22.ReportBloc(gh<_i9.SalesReportRepository>()));
    gh.factory<_i23.UserBloc>(() => _i23.UserBloc(gh<_i12.UserRepository>()));
    gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(gh<_i14.AuthRepository>()));
    gh.factory<_i25.CategoryBloc>(
        () => _i25.CategoryBloc(gh<_i16.CategoryRepository>()));
    gh.factory<_i26.CouponBloc>(
        () => _i26.CouponBloc(gh<_i18.CouponRepositery>()));
    return this;
  }
}

class _$DioModule extends _i27.DioModule {}

class _$SecureStorageModule extends _i28.SecureStorageModule {}
