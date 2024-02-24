import 'package:device_mart/domain/models/auth_model/login_model.dart';
import 'package:device_mart/domain/repositories/auth_repositories/auth_repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AuthBloc(this.repository) : super(AuthState.initial()) {
    on<SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final result = await repository.signIn(LoginModel(
          username: usernameController.text.trim(),
          password: passwordController.text.trim()));
      usernameController.clear();
      passwordController.clear();
      emit(state.copyWith(isLoading: false, message: result));
    });
    on<_Obscure>((event, emit) {
      emit(state.copyWith(obscure: !state.obscure));
    });
  }
  Future<void> logout() async {
    await repository.logout();
  }

  @override
  Future<void> close() {
    usernameController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
