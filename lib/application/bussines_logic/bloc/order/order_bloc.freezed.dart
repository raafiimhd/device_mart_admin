// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel) getOrder,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderManagement,
    required TResult Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)
        updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult? Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult Function(UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(GetOrderManagement value) getOrderManagement,
    required TResult Function(UpdateOrder value) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(GetOrderManagement value)? getOrderManagement,
    TResult? Function(UpdateOrder value)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrder value)? getOrder,
    TResult Function(GetOrderManagement value)? getOrderManagement,
    TResult Function(UpdateOrder value)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrderImplCopyWith<$Res> {
  factory _$$GetOrderImplCopyWith(
          _$GetOrderImpl value, $Res Function(_$GetOrderImpl) then) =
      __$$GetOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetOrderQurreyModel getOrderQurreyModel});
}

/// @nodoc
class __$$GetOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderImpl>
    implements _$$GetOrderImplCopyWith<$Res> {
  __$$GetOrderImplCopyWithImpl(
      _$GetOrderImpl _value, $Res Function(_$GetOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOrderQurreyModel = null,
  }) {
    return _then(_$GetOrderImpl(
      getOrderQurreyModel: null == getOrderQurreyModel
          ? _value.getOrderQurreyModel
          : getOrderQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetOrderQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetOrderImpl implements GetOrder {
  const _$GetOrderImpl({required this.getOrderQurreyModel});

  @override
  final GetOrderQurreyModel getOrderQurreyModel;

  @override
  String toString() {
    return 'OrderEvent.getOrder(getOrderQurreyModel: $getOrderQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderImpl &&
            (identical(other.getOrderQurreyModel, getOrderQurreyModel) ||
                other.getOrderQurreyModel == getOrderQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getOrderQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderImplCopyWith<_$GetOrderImpl> get copyWith =>
      __$$GetOrderImplCopyWithImpl<_$GetOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel) getOrder,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderManagement,
    required TResult Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)
        updateStatus,
  }) {
    return getOrder(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult? Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
  }) {
    return getOrder?.call(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult Function(UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(getOrderQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(GetOrderManagement value) getOrderManagement,
    required TResult Function(UpdateOrder value) updateStatus,
  }) {
    return getOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(GetOrderManagement value)? getOrderManagement,
    TResult? Function(UpdateOrder value)? updateStatus,
  }) {
    return getOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrder value)? getOrder,
    TResult Function(GetOrderManagement value)? getOrderManagement,
    TResult Function(UpdateOrder value)? updateStatus,
    required TResult orElse(),
  }) {
    if (getOrder != null) {
      return getOrder(this);
    }
    return orElse();
  }
}

abstract class GetOrder implements OrderEvent {
  const factory GetOrder(
          {required final GetOrderQurreyModel getOrderQurreyModel}) =
      _$GetOrderImpl;

  GetOrderQurreyModel get getOrderQurreyModel;
  @JsonKey(ignore: true)
  _$$GetOrderImplCopyWith<_$GetOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderManagementImplCopyWith<$Res> {
  factory _$$GetOrderManagementImplCopyWith(_$GetOrderManagementImpl value,
          $Res Function(_$GetOrderManagementImpl) then) =
      __$$GetOrderManagementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetOrderQurreyModel getOrderQurreyModel});
}

/// @nodoc
class __$$GetOrderManagementImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrderManagementImpl>
    implements _$$GetOrderManagementImplCopyWith<$Res> {
  __$$GetOrderManagementImplCopyWithImpl(_$GetOrderManagementImpl _value,
      $Res Function(_$GetOrderManagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOrderQurreyModel = null,
  }) {
    return _then(_$GetOrderManagementImpl(
      getOrderQurreyModel: null == getOrderQurreyModel
          ? _value.getOrderQurreyModel
          : getOrderQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetOrderQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetOrderManagementImpl implements GetOrderManagement {
  const _$GetOrderManagementImpl({required this.getOrderQurreyModel});

  @override
  final GetOrderQurreyModel getOrderQurreyModel;

  @override
  String toString() {
    return 'OrderEvent.getOrderManagement(getOrderQurreyModel: $getOrderQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderManagementImpl &&
            (identical(other.getOrderQurreyModel, getOrderQurreyModel) ||
                other.getOrderQurreyModel == getOrderQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getOrderQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderManagementImplCopyWith<_$GetOrderManagementImpl> get copyWith =>
      __$$GetOrderManagementImplCopyWithImpl<_$GetOrderManagementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel) getOrder,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderManagement,
    required TResult Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)
        updateStatus,
  }) {
    return getOrderManagement(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult? Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
  }) {
    return getOrderManagement?.call(getOrderQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult Function(UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
    required TResult orElse(),
  }) {
    if (getOrderManagement != null) {
      return getOrderManagement(getOrderQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(GetOrderManagement value) getOrderManagement,
    required TResult Function(UpdateOrder value) updateStatus,
  }) {
    return getOrderManagement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(GetOrderManagement value)? getOrderManagement,
    TResult? Function(UpdateOrder value)? updateStatus,
  }) {
    return getOrderManagement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrder value)? getOrder,
    TResult Function(GetOrderManagement value)? getOrderManagement,
    TResult Function(UpdateOrder value)? updateStatus,
    required TResult orElse(),
  }) {
    if (getOrderManagement != null) {
      return getOrderManagement(this);
    }
    return orElse();
  }
}

abstract class GetOrderManagement implements OrderEvent {
  const factory GetOrderManagement(
          {required final GetOrderQurreyModel getOrderQurreyModel}) =
      _$GetOrderManagementImpl;

  GetOrderQurreyModel get getOrderQurreyModel;
  @JsonKey(ignore: true)
  _$$GetOrderManagementImplCopyWith<_$GetOrderManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderImplCopyWith<$Res> {
  factory _$$UpdateOrderImplCopyWith(
          _$UpdateOrderImpl value, $Res Function(_$UpdateOrderImpl) then) =
      __$$UpdateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel});
}

/// @nodoc
class __$$UpdateOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$UpdateOrderImpl>
    implements _$$UpdateOrderImplCopyWith<$Res> {
  __$$UpdateOrderImplCopyWithImpl(
      _$UpdateOrderImpl _value, $Res Function(_$UpdateOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateOrderStatusQurreyModel = null,
  }) {
    return _then(_$UpdateOrderImpl(
      updateOrderStatusQurreyModel: null == updateOrderStatusQurreyModel
          ? _value.updateOrderStatusQurreyModel
          : updateOrderStatusQurreyModel // ignore: cast_nullable_to_non_nullable
              as UpdateOrderStatusQurreyModel,
    ));
  }
}

/// @nodoc

class _$UpdateOrderImpl implements UpdateOrder {
  const _$UpdateOrderImpl({required this.updateOrderStatusQurreyModel});

  @override
  final UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel;

  @override
  String toString() {
    return 'OrderEvent.updateStatus(updateOrderStatusQurreyModel: $updateOrderStatusQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderImpl &&
            (identical(other.updateOrderStatusQurreyModel,
                    updateOrderStatusQurreyModel) ||
                other.updateOrderStatusQurreyModel ==
                    updateOrderStatusQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateOrderStatusQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      __$$UpdateOrderImplCopyWithImpl<_$UpdateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel) getOrder,
    required TResult Function(GetOrderQurreyModel getOrderQurreyModel)
        getOrderManagement,
    required TResult Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)
        updateStatus,
  }) {
    return updateStatus(updateOrderStatusQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult? Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult? Function(
            UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
  }) {
    return updateStatus?.call(updateOrderStatusQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)? getOrder,
    TResult Function(GetOrderQurreyModel getOrderQurreyModel)?
        getOrderManagement,
    TResult Function(UpdateOrderStatusQurreyModel updateOrderStatusQurreyModel)?
        updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(updateOrderStatusQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOrder value) getOrder,
    required TResult Function(GetOrderManagement value) getOrderManagement,
    required TResult Function(UpdateOrder value) updateStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOrder value)? getOrder,
    TResult? Function(GetOrderManagement value)? getOrderManagement,
    TResult? Function(UpdateOrder value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOrder value)? getOrder,
    TResult Function(GetOrderManagement value)? getOrderManagement,
    TResult Function(UpdateOrder value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateOrder implements OrderEvent {
  const factory UpdateOrder(
      {required final UpdateOrderStatusQurreyModel
          updateOrderStatusQurreyModel}) = _$UpdateOrderImpl;

  UpdateOrderStatusQurreyModel get updateOrderStatusQurreyModel;
  @JsonKey(ignore: true)
  _$$UpdateOrderImplCopyWith<_$UpdateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetOrderRespModel? get getOrderRespModel =>
      throw _privateConstructorUsedError;
  OrderRespModel? get orderRespModel => throw _privateConstructorUsedError;
  UpdateOrderStatusRespModel? get updateOrderStatusRespModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetOrderRespModel? getOrderRespModel,
      OrderRespModel? orderRespModel,
      UpdateOrderStatusRespModel? updateOrderStatusRespModel});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getOrderRespModel = freezed,
    Object? orderRespModel = freezed,
    Object? updateOrderStatusRespModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getOrderRespModel: freezed == getOrderRespModel
          ? _value.getOrderRespModel
          : getOrderRespModel // ignore: cast_nullable_to_non_nullable
              as GetOrderRespModel?,
      orderRespModel: freezed == orderRespModel
          ? _value.orderRespModel
          : orderRespModel // ignore: cast_nullable_to_non_nullable
              as OrderRespModel?,
      updateOrderStatusRespModel: freezed == updateOrderStatusRespModel
          ? _value.updateOrderStatusRespModel
          : updateOrderStatusRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateOrderStatusRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      GetOrderRespModel? getOrderRespModel,
      OrderRespModel? orderRespModel,
      UpdateOrderStatusRespModel? updateOrderStatusRespModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? getOrderRespModel = freezed,
    Object? orderRespModel = freezed,
    Object? updateOrderStatusRespModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getOrderRespModel: freezed == getOrderRespModel
          ? _value.getOrderRespModel
          : getOrderRespModel // ignore: cast_nullable_to_non_nullable
              as GetOrderRespModel?,
      orderRespModel: freezed == orderRespModel
          ? _value.orderRespModel
          : orderRespModel // ignore: cast_nullable_to_non_nullable
              as OrderRespModel?,
      updateOrderStatusRespModel: freezed == updateOrderStatusRespModel
          ? _value.updateOrderStatusRespModel
          : updateOrderStatusRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateOrderStatusRespModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.getOrderRespModel,
      this.orderRespModel,
      this.updateOrderStatusRespModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final GetOrderRespModel? getOrderRespModel;
  @override
  final OrderRespModel? orderRespModel;
  @override
  final UpdateOrderStatusRespModel? updateOrderStatusRespModel;

  @override
  String toString() {
    return 'OrderState(isLoading: $isLoading, hasError: $hasError, message: $message, getOrderRespModel: $getOrderRespModel, orderRespModel: $orderRespModel, updateOrderStatusRespModel: $updateOrderStatusRespModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getOrderRespModel, getOrderRespModel) ||
                other.getOrderRespModel == getOrderRespModel) &&
            (identical(other.orderRespModel, orderRespModel) ||
                other.orderRespModel == orderRespModel) &&
            (identical(other.updateOrderStatusRespModel,
                    updateOrderStatusRespModel) ||
                other.updateOrderStatusRespModel ==
                    updateOrderStatusRespModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, message,
      getOrderRespModel, orderRespModel, updateOrderStatusRespModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OrderState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          final String? message,
          final GetOrderRespModel? getOrderRespModel,
          final OrderRespModel? orderRespModel,
          final UpdateOrderStatusRespModel? updateOrderStatusRespModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  GetOrderRespModel? get getOrderRespModel;
  @override
  OrderRespModel? get orderRespModel;
  @override
  UpdateOrderStatusRespModel? get updateOrderStatusRespModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
