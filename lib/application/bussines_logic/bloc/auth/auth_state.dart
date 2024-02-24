part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {String? message,
      required bool obscure,
      required bool isLoading,
      required bool hasError}) = _Initial;
  factory AuthState.initial() =>
      const AuthState(isLoading: false, hasError: false, obscure: true);
}
