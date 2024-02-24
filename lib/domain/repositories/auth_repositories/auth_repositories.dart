import 'package:device_mart/domain/models/auth_model/login_model.dart';

abstract class AuthRepository {
  Future<String> signIn(LoginModel loginModel);
  Future<void> logout();
}
