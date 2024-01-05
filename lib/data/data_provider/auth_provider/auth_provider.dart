import 'package:device_mart/domain/core/constants/api_endponts/api_endpoints.dart';
import 'package:device_mart/domain/models/auth_model/login_model.dart';
import 'package:device_mart/domain/core/repositories/auth_repositories/auth_repositories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthProvider implements AuthRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  AuthProvider(this.dio, this.secureStorage);

  @override
  Future<void> logout() async {
    try {
      final token = await secureStorage.read(key: 'token');
      await secureStorage.delete(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<String> signIn(LoginModel loginModel) async {
    try {
      final response = await dio.post(ApiEndPoints.signInEndPoint,
          data: loginModel.toJson());
      // print('kkkkkkkkkkkkkkkkkkkk${response}');
      if (response.statusCode == 200) {
        final token = response.data['data']['token'];
        // print('llllllllllllllllllllllllllll${response.data}');
        // print('kkkkkkkkkkkkkkkkkkkkkkppppppppppppp${token}');
        await secureStorage.write(key: 'token', value: token);
        await secureStorage.read(key: 'token');
        return response.data['message'];
      } else {
        return 'Something error status code';
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return e.response?.data['message'];
      } else {
        return e.toString();
      }
    } catch (e) {
      return e.toString();
    }
  }
}
