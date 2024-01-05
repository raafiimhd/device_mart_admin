// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserQurreyModel userQurreyModel) getUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        blockUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserQurreyModel userQurreyModel)? getUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserQurreyModel userQurreyModel)? getUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(BlockUser value) blockUser,
    required TResult Function(UnBlockUser value) unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(BlockUser value)? blockUser,
    TResult? Function(UnBlockUser value)? unBlockUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(BlockUser value)? blockUser,
    TResult Function(UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserQurreyModel userQurreyModel});
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userQurreyModel = null,
  }) {
    return _then(_$GetUserImpl(
      userQurreyModel: null == userQurreyModel
          ? _value.userQurreyModel
          : userQurreyModel // ignore: cast_nullable_to_non_nullable
              as UserQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetUserImpl implements GetUser {
  const _$GetUserImpl({required this.userQurreyModel});

  @override
  final UserQurreyModel userQurreyModel;

  @override
  String toString() {
    return 'UserEvent.getUser(userQurreyModel: $userQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserImpl &&
            (identical(other.userQurreyModel, userQurreyModel) ||
                other.userQurreyModel == userQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      __$$GetUserImplCopyWithImpl<_$GetUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserQurreyModel userQurreyModel) getUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        blockUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        unBlockUser,
  }) {
    return getUser(userQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserQurreyModel userQurreyModel)? getUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
  }) {
    return getUser?.call(userQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserQurreyModel userQurreyModel)? getUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(userQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(BlockUser value) blockUser,
    required TResult Function(UnBlockUser value) unBlockUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(BlockUser value)? blockUser,
    TResult? Function(UnBlockUser value)? unBlockUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(BlockUser value)? blockUser,
    TResult Function(UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements UserEvent {
  const factory GetUser({required final UserQurreyModel userQurreyModel}) =
      _$GetUserImpl;

  UserQurreyModel get userQurreyModel;
  @JsonKey(ignore: true)
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockUserImplCopyWith<$Res> {
  factory _$$BlockUserImplCopyWith(
          _$BlockUserImpl value, $Res Function(_$BlockUserImpl) then) =
      __$$BlockUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel});
}

/// @nodoc
class __$$BlockUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$BlockUserImpl>
    implements _$$BlockUserImplCopyWith<$Res> {
  __$$BlockUserImplCopyWithImpl(
      _$BlockUserImpl _value, $Res Function(_$BlockUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockAndUnblockUserQurreyModel = null,
  }) {
    return _then(_$BlockUserImpl(
      blockAndUnblockUserQurreyModel: null == blockAndUnblockUserQurreyModel
          ? _value.blockAndUnblockUserQurreyModel
          : blockAndUnblockUserQurreyModel // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockUserQurreyModel,
    ));
  }
}

/// @nodoc

class _$BlockUserImpl implements BlockUser {
  const _$BlockUserImpl({required this.blockAndUnblockUserQurreyModel});

  @override
  final BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel;

  @override
  String toString() {
    return 'UserEvent.blockUser(blockAndUnblockUserQurreyModel: $blockAndUnblockUserQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockUserImpl &&
            (identical(other.blockAndUnblockUserQurreyModel,
                    blockAndUnblockUserQurreyModel) ||
                other.blockAndUnblockUserQurreyModel ==
                    blockAndUnblockUserQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockAndUnblockUserQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      __$$BlockUserImplCopyWithImpl<_$BlockUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserQurreyModel userQurreyModel) getUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        blockUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        unBlockUser,
  }) {
    return blockUser(blockAndUnblockUserQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserQurreyModel userQurreyModel)? getUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
  }) {
    return blockUser?.call(blockAndUnblockUserQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserQurreyModel userQurreyModel)? getUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(blockAndUnblockUserQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(BlockUser value) blockUser,
    required TResult Function(UnBlockUser value) unBlockUser,
  }) {
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(BlockUser value)? blockUser,
    TResult? Function(UnBlockUser value)? unBlockUser,
  }) {
    return blockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(BlockUser value)? blockUser,
    TResult Function(UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class BlockUser implements UserEvent {
  const factory BlockUser(
      {required final BlockAndUnblockUserQurreyModel
          blockAndUnblockUserQurreyModel}) = _$BlockUserImpl;

  BlockAndUnblockUserQurreyModel get blockAndUnblockUserQurreyModel;
  @JsonKey(ignore: true)
  _$$BlockUserImplCopyWith<_$BlockUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnBlockUserImplCopyWith<$Res> {
  factory _$$UnBlockUserImplCopyWith(
          _$UnBlockUserImpl value, $Res Function(_$UnBlockUserImpl) then) =
      __$$UnBlockUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel});
}

/// @nodoc
class __$$UnBlockUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UnBlockUserImpl>
    implements _$$UnBlockUserImplCopyWith<$Res> {
  __$$UnBlockUserImplCopyWithImpl(
      _$UnBlockUserImpl _value, $Res Function(_$UnBlockUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockAndUnblockUserQurreyModel = null,
  }) {
    return _then(_$UnBlockUserImpl(
      blockAndUnblockUserQurreyModel: null == blockAndUnblockUserQurreyModel
          ? _value.blockAndUnblockUserQurreyModel
          : blockAndUnblockUserQurreyModel // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockUserQurreyModel,
    ));
  }
}

/// @nodoc

class _$UnBlockUserImpl implements UnBlockUser {
  const _$UnBlockUserImpl({required this.blockAndUnblockUserQurreyModel});

  @override
  final BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel;

  @override
  String toString() {
    return 'UserEvent.unBlockUser(blockAndUnblockUserQurreyModel: $blockAndUnblockUserQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnBlockUserImpl &&
            (identical(other.blockAndUnblockUserQurreyModel,
                    blockAndUnblockUserQurreyModel) ||
                other.blockAndUnblockUserQurreyModel ==
                    blockAndUnblockUserQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockAndUnblockUserQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnBlockUserImplCopyWith<_$UnBlockUserImpl> get copyWith =>
      __$$UnBlockUserImplCopyWithImpl<_$UnBlockUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserQurreyModel userQurreyModel) getUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        blockUser,
    required TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)
        unBlockUser,
  }) {
    return unBlockUser(blockAndUnblockUserQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserQurreyModel userQurreyModel)? getUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult? Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
  }) {
    return unBlockUser?.call(blockAndUnblockUserQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserQurreyModel userQurreyModel)? getUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        blockUser,
    TResult Function(
            BlockAndUnblockUserQurreyModel blockAndUnblockUserQurreyModel)?
        unBlockUser,
    required TResult orElse(),
  }) {
    if (unBlockUser != null) {
      return unBlockUser(blockAndUnblockUserQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(BlockUser value) blockUser,
    required TResult Function(UnBlockUser value) unBlockUser,
  }) {
    return unBlockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(BlockUser value)? blockUser,
    TResult? Function(UnBlockUser value)? unBlockUser,
  }) {
    return unBlockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(BlockUser value)? blockUser,
    TResult Function(UnBlockUser value)? unBlockUser,
    required TResult orElse(),
  }) {
    if (unBlockUser != null) {
      return unBlockUser(this);
    }
    return orElse();
  }
}

abstract class UnBlockUser implements UserEvent {
  const factory UnBlockUser(
      {required final BlockAndUnblockUserQurreyModel
          blockAndUnblockUserQurreyModel}) = _$UnBlockUserImpl;

  BlockAndUnblockUserQurreyModel get blockAndUnblockUserQurreyModel;
  @JsonKey(ignore: true)
  _$$UnBlockUserImplCopyWith<_$UnBlockUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  bool get isUnblocked => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserRespModel? get userRespModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isBlocked,
      bool isUnblocked,
      String? message,
      UserRespModel? userRespModel});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isBlocked = null,
    Object? isUnblocked = null,
    Object? message = freezed,
    Object? userRespModel = freezed,
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
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnblocked: null == isUnblocked
          ? _value.isUnblocked
          : isUnblocked // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userRespModel: freezed == userRespModel
          ? _value.userRespModel
          : userRespModel // ignore: cast_nullable_to_non_nullable
              as UserRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isBlocked,
      bool isUnblocked,
      String? message,
      UserRespModel? userRespModel});
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isBlocked = null,
    Object? isUnblocked = null,
    Object? message = freezed,
    Object? userRespModel = freezed,
  }) {
    return _then(_$initialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnblocked: null == isUnblocked
          ? _value.isUnblocked
          : isUnblocked // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userRespModel: freezed == userRespModel
          ? _value.userRespModel
          : userRespModel // ignore: cast_nullable_to_non_nullable
              as UserRespModel?,
    ));
  }
}

/// @nodoc

class _$initialImpl implements _initial {
  const _$initialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isBlocked,
      required this.isUnblocked,
      this.message,
      this.userRespModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isBlocked;
  @override
  final bool isUnblocked;
  @override
  final String? message;
  @override
  final UserRespModel? userRespModel;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, hasError: $hasError, isBlocked: $isBlocked, isUnblocked: $isUnblocked, message: $message, userRespModel: $userRespModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$initialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isUnblocked, isUnblocked) ||
                other.isUnblocked == isUnblocked) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userRespModel, userRespModel) ||
                other.userRespModel == userRespModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isBlocked,
      isUnblocked, message, userRespModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      __$$initialImplCopyWithImpl<_$initialImpl>(this, _$identity);
}

abstract class _initial implements UserState {
  const factory _initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isBlocked,
      required final bool isUnblocked,
      final String? message,
      final UserRespModel? userRespModel}) = _$initialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isBlocked;
  @override
  bool get isUnblocked;
  @override
  String? get message;
  @override
  UserRespModel? get userRespModel;
  @override
  @JsonKey(ignore: true)
  _$$initialImplCopyWith<_$initialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
