import 'package:bloc/bloc.dart';
import 'package:device_mart/data/data_provider/coupon_provider/coupon_provider.dart';
import 'package:device_mart/domain/core/repositories/coupon_repositories/coupon_repositories.dart';
import 'package:device_mart/domain/models/coupon/add/add_coupon_model/add_coupon_model.dart';
import 'package:device_mart/domain/models/coupon/block_and_unblock_model/block_and_unblock_qurrey_model/block_and_unblock_qurrey_model.dart';
import 'package:device_mart/domain/models/coupon/get/get_coupon_model/get_coupon_resp_model.dart';
import 'package:device_mart/domain/models/coupon/update/update_coupon_model/update_coupon_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

@injectable
class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final TextEditingController couponNameController = TextEditingController();
  final TextEditingController couponCode = TextEditingController();
  final TextEditingController minValueController = TextEditingController();
  final TextEditingController discountMaxController = TextEditingController();
  final TextEditingController discountPercentage = TextEditingController();
  final TextEditingController validcontroller = TextEditingController();
  final GlobalKey<FormState> couponKey = GlobalKey<FormState>();
  final CouponProvider couponProvider =
      CouponProvider(Dio(), const FlutterSecureStorage());
  CouponRepositery couponRepositery;
  CouponBloc(this.couponRepositery) : super(CouponState.initial()) {
    on<GetCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await couponRepositery.getCoupon();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              message: 'check connection and reload',
              hasError: true)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              message: resp.message,
              getCouponRespModel: resp)));
    });
    on<AddCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await couponRepositery.addCouponModel(
          addCouponModel: event.addCouponModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isAdding: false,
                message: 'something went wrong please try again',
                hasError: true,
                isLoading: false,
              )), (resp) {
        emit(state.copyWith(
            hasError: false,
            isAdding: true,
            isLoading: false,
            message: resp.message));
            closeController();
      add(const CouponEvent.getCoupon());
      });
    });
    on<UpdateCoupon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await couponRepositery.updateCoupon(
          updateCouponModel: event.updateCouponModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isUpdating: false,
                message: 'something went wrong please try again',
                hasError: true,
                isLoading: false,
              )), (resp) {
        emit(state.copyWith(
            hasError: false,
            isUpdating: true,
            isLoading: false,
            message: resp.message));
        add(const CouponEvent.getCoupon());
      });
    });
    on<BlockCoupon>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isBlocked: false,
        isUnblocked: false,
      ));
      final result = await couponRepositery.blockCoupon(
        blockAndUnblockCouponQurreyModel:
            event.blockAndUnblockCouponQurreyModel,
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
          message: 'Blocked Category successfully',
        ));
        add(const CouponEvent.getCoupon());
      });
    });
    on<UnBlockCoupon>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isBlocked: false,
        isUnblocked: false,
      ));
      final result = await couponRepositery.unBlockCoupon(
        blockAndUnblockCouponQurreyModel:
            event.blockAndUnblockCouponQurreyModel,
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
          message: 'Blocked Category successfully',
        ));
        add(const CouponEvent.getCoupon());
      });
    });
  }
  void closeController() {
    couponNameController.clear();
    couponCode.clear();
    minValueController.clear();
    discountMaxController.clear();
    discountPercentage.clear();
    validcontroller.clear();
  }
}
