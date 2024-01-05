part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required bool hasError,
    required bool isBlocked,
    required bool isUnblocked,
    String? message,
    UserRespModel? userRespModel,
  }) = _initial;
  factory UserState.initial() => const UserState(
    hasError: false,
    isBlocked: false,
    isUnblocked: false,
    isLoading:false,

  );
}
