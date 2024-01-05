import 'package:bloc/bloc.dart';
import 'package:device_mart/data/data_provider/user_provider/user_provider.dart';
import 'package:device_mart/domain/core/repositories/user_repositories/user_repositories.dart';
import 'package:device_mart/domain/models/user/block_and_unblock_user_qurrey_model/block_and_unblock_user_qurrey.dart';
import 'package:device_mart/domain/models/user/user_qurrey_model/user_qurrey_model.dart';
import 'package:device_mart/domain/models/user/user_resp_model/user_resp_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository;
  final UserProvider userProvider = UserProvider(Dio(), const FlutterSecureStorage());
  UserBloc(this.userRepository) : super(UserState.initial()) {
   on<GetUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,isBlocked: false,isUnblocked: false));
      final result = await userProvider.getUser(userQurreyModel: event.userQurreyModel);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnblocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (resp) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            isBlocked: false,
            isUnblocked: false,
            message: null,
            userRespModel: resp));
      });
    });
       on<BlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnblocked: false,));
      final result = await userRepository.blockUser(
        blockAndUnblockUserQurreyModel: event.blockAndUnblockUserQurreyModel,
      );
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnblocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: true,
          hasError: false,
          isUnblocked: false,
          message: getUsersResponseModel.message,
        ));
        add(UserEvent.getUser(userQurreyModel: UserQurreyModel(page: 1,count: 10)));
      });
    }); 
    on<UnBlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          isUnblocked: false,));
      final result = await userRepository.unblockUser(
        blockAndUnblockUserQurreyModel: event.blockAndUnblockUserQurreyModel,
      );
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnblocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          hasError: false,
          isUnblocked: true,
          message:getUsersResponseModel.message,
        ));
        add(UserEvent.getUser(userQurreyModel: UserQurreyModel(page: 1,count: 10)));
      });
    }); 
  }
}

