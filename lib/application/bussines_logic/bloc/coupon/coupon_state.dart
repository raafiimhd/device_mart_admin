part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState(
          {required bool isLoading,
          required bool hasError,
          String? message,
          required bool isDone,
          required bool isAdding,
          GetCouponRespModel? getCouponRespModel,
          required bool isUpdating,
          required bool isBlocked,
          required bool isUnblocked,
          BlockAndUnblockCouponQurreyModel? blockAndUnblockCouponQurreyModel}) =
      _Initial;
  factory CouponState.initial() => const CouponState(
      isLoading: false,
      isBlocked: false,
      isUnblocked: false,
      hasError: false,
      isDone: false,
      isAdding: false,
      isUpdating: false);
}
