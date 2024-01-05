part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent.getCoupon() = GetCoupon;
  const factory CouponEvent.addCoupon(
      {required AddCouponModel addCouponModel}) = AddCoupon;
  const factory CouponEvent.updateCoupon(
      {required UpdateCouponModel updateCouponModel}) = UpdateCoupon;
  const factory CouponEvent.blockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel}) = BlockCoupon;
  const factory CouponEvent.unblockCoupon(
      {required BlockAndUnblockCouponQurreyModel
          blockAndUnblockCouponQurreyModel}) = UnBlockCoupon;
}
