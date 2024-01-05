part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser({required UserQurreyModel userQurreyModel}) = GetUser;
   const factory UserEvent.blockUser(
      {required BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel}) = BlockUser;
  const factory UserEvent.unBlockUser(
      {required BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel}) = UnBlockUser;
}