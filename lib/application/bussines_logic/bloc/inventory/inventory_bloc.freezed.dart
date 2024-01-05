// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryEventCopyWith<$Res> {
  factory $InventoryEventCopyWith(
          InventoryEvent value, $Res Function(InventoryEvent) then) =
      _$InventoryEventCopyWithImpl<$Res, InventoryEvent>;
}

/// @nodoc
class _$InventoryEventCopyWithImpl<$Res, $Val extends InventoryEvent>
    implements $InventoryEventCopyWith<$Res> {
  _$InventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInventoryCallImplCopyWith<$Res> {
  factory _$$GetInventoryCallImplCopyWith(_$GetInventoryCallImpl value,
          $Res Function(_$GetInventoryCallImpl) then) =
      __$$GetInventoryCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetResponseQurrey getResponseQurrey});
}

/// @nodoc
class __$$GetInventoryCallImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$GetInventoryCallImpl>
    implements _$$GetInventoryCallImplCopyWith<$Res> {
  __$$GetInventoryCallImplCopyWithImpl(_$GetInventoryCallImpl _value,
      $Res Function(_$GetInventoryCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getResponseQurrey = null,
  }) {
    return _then(_$GetInventoryCallImpl(
      getResponseQurrey: null == getResponseQurrey
          ? _value.getResponseQurrey
          : getResponseQurrey // ignore: cast_nullable_to_non_nullable
              as GetResponseQurrey,
    ));
  }
}

/// @nodoc

class _$GetInventoryCallImpl implements GetInventoryCall {
  const _$GetInventoryCallImpl({required this.getResponseQurrey});

  @override
  final GetResponseQurrey getResponseQurrey;

  @override
  String toString() {
    return 'InventoryEvent.getInventoryCall(getResponseQurrey: $getResponseQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInventoryCallImpl &&
            (identical(other.getResponseQurrey, getResponseQurrey) ||
                other.getResponseQurrey == getResponseQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getResponseQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInventoryCallImplCopyWith<_$GetInventoryCallImpl> get copyWith =>
      __$$GetInventoryCallImplCopyWithImpl<_$GetInventoryCallImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return getInventoryCall(getResponseQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return getInventoryCall?.call(getResponseQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getInventoryCall != null) {
      return getInventoryCall(getResponseQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return getInventoryCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return getInventoryCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getInventoryCall != null) {
      return getInventoryCall(this);
    }
    return orElse();
  }
}

abstract class GetInventoryCall implements InventoryEvent {
  const factory GetInventoryCall(
          {required final GetResponseQurrey getResponseQurrey}) =
      _$GetInventoryCallImpl;

  GetResponseQurrey get getResponseQurrey;
  @JsonKey(ignore: true)
  _$$GetInventoryCallImplCopyWith<_$GetInventoryCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddInventoryImplCopyWith<$Res> {
  factory _$$AddInventoryImplCopyWith(
          _$AddInventoryImpl value, $Res Function(_$AddInventoryImpl) then) =
      __$$AddInventoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddInventoryModel addInventoryModel});
}

/// @nodoc
class __$$AddInventoryImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$AddInventoryImpl>
    implements _$$AddInventoryImplCopyWith<$Res> {
  __$$AddInventoryImplCopyWithImpl(
      _$AddInventoryImpl _value, $Res Function(_$AddInventoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addInventoryModel = null,
  }) {
    return _then(_$AddInventoryImpl(
      addInventoryModel: null == addInventoryModel
          ? _value.addInventoryModel
          : addInventoryModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryModel,
    ));
  }
}

/// @nodoc

class _$AddInventoryImpl implements AddInventory {
  const _$AddInventoryImpl({required this.addInventoryModel});

  @override
  final AddInventoryModel addInventoryModel;

  @override
  String toString() {
    return 'InventoryEvent.addInventory(addInventoryModel: $addInventoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddInventoryImpl &&
            (identical(other.addInventoryModel, addInventoryModel) ||
                other.addInventoryModel == addInventoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addInventoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddInventoryImplCopyWith<_$AddInventoryImpl> get copyWith =>
      __$$AddInventoryImplCopyWithImpl<_$AddInventoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return addInventory(addInventoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return addInventory?.call(addInventoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (addInventory != null) {
      return addInventory(addInventoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return addInventory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return addInventory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (addInventory != null) {
      return addInventory(this);
    }
    return orElse();
  }
}

abstract class AddInventory implements InventoryEvent {
  const factory AddInventory(
          {required final AddInventoryModel addInventoryModel}) =
      _$AddInventoryImpl;

  AddInventoryModel get addInventoryModel;
  @JsonKey(ignore: true)
  _$$AddInventoryImplCopyWith<_$AddInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$postImagesImplCopyWith<$Res> {
  factory _$$postImagesImplCopyWith(
          _$postImagesImpl value, $Res Function(_$postImagesImpl) then) =
      __$$postImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$postImagesImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$postImagesImpl>
    implements _$$postImagesImplCopyWith<$Res> {
  __$$postImagesImplCopyWithImpl(
      _$postImagesImpl _value, $Res Function(_$postImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$postImagesImpl implements postImages {
  const _$postImagesImpl();

  @override
  String toString() {
    return 'InventoryEvent.postImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$postImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return postImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return postImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (postImage != null) {
      return postImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return postImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return postImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (postImage != null) {
      return postImage(this);
    }
    return orElse();
  }
}

abstract class postImages implements InventoryEvent {
  const factory postImages() = _$postImagesImpl;
}

/// @nodoc
abstract class _$$UpdateProductImplCopyWith<$Res> {
  factory _$$UpdateProductImplCopyWith(
          _$UpdateProductImpl value, $Res Function(_$UpdateProductImpl) then) =
      __$$UpdateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateInventoryModel updateInventoryModel});
}

/// @nodoc
class __$$UpdateProductImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$UpdateProductImpl>
    implements _$$UpdateProductImplCopyWith<$Res> {
  __$$UpdateProductImplCopyWithImpl(
      _$UpdateProductImpl _value, $Res Function(_$UpdateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateInventoryModel = null,
  }) {
    return _then(_$UpdateProductImpl(
      updateInventoryModel: null == updateInventoryModel
          ? _value.updateInventoryModel
          : updateInventoryModel // ignore: cast_nullable_to_non_nullable
              as UpdateInventoryModel,
    ));
  }
}

/// @nodoc

class _$UpdateProductImpl implements UpdateProduct {
  const _$UpdateProductImpl({required this.updateInventoryModel});

  @override
  final UpdateInventoryModel updateInventoryModel;

  @override
  String toString() {
    return 'InventoryEvent.updateProduct(updateInventoryModel: $updateInventoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.updateInventoryModel, updateInventoryModel) ||
                other.updateInventoryModel == updateInventoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateInventoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return updateProduct(updateInventoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return updateProduct?.call(updateInventoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(updateInventoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements InventoryEvent {
  const factory UpdateProduct(
          {required final UpdateInventoryModel updateInventoryModel}) =
      _$UpdateProductImpl;

  UpdateInventoryModel get updateInventoryModel;
  @JsonKey(ignore: true)
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockProductImplCopyWith<$Res> {
  factory _$$BlockProductImplCopyWith(
          _$BlockProductImpl value, $Res Function(_$BlockProductImpl) then) =
      __$$BlockProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockQurrey blockAndUnblockQurrey});
}

/// @nodoc
class __$$BlockProductImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$BlockProductImpl>
    implements _$$BlockProductImplCopyWith<$Res> {
  __$$BlockProductImplCopyWithImpl(
      _$BlockProductImpl _value, $Res Function(_$BlockProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockAndUnblockQurrey = null,
  }) {
    return _then(_$BlockProductImpl(
      blockAndUnblockQurrey: null == blockAndUnblockQurrey
          ? _value.blockAndUnblockQurrey
          : blockAndUnblockQurrey // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockQurrey,
    ));
  }
}

/// @nodoc

class _$BlockProductImpl implements BlockProduct {
  const _$BlockProductImpl({required this.blockAndUnblockQurrey});

  @override
  final BlockAndUnblockQurrey blockAndUnblockQurrey;

  @override
  String toString() {
    return 'InventoryEvent.blockProduct(blockAndUnblockQurrey: $blockAndUnblockQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockProductImpl &&
            (identical(other.blockAndUnblockQurrey, blockAndUnblockQurrey) ||
                other.blockAndUnblockQurrey == blockAndUnblockQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockAndUnblockQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockProductImplCopyWith<_$BlockProductImpl> get copyWith =>
      __$$BlockProductImplCopyWithImpl<_$BlockProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return blockProduct(blockAndUnblockQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return blockProduct?.call(blockAndUnblockQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (blockProduct != null) {
      return blockProduct(blockAndUnblockQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return blockProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return blockProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (blockProduct != null) {
      return blockProduct(this);
    }
    return orElse();
  }
}

abstract class BlockProduct implements InventoryEvent {
  const factory BlockProduct(
          {required final BlockAndUnblockQurrey blockAndUnblockQurrey}) =
      _$BlockProductImpl;

  BlockAndUnblockQurrey get blockAndUnblockQurrey;
  @JsonKey(ignore: true)
  _$$BlockProductImplCopyWith<_$BlockProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnBlockProductImplCopyWith<$Res> {
  factory _$$UnBlockProductImplCopyWith(_$UnBlockProductImpl value,
          $Res Function(_$UnBlockProductImpl) then) =
      __$$UnBlockProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockQurrey blockAndUnblockQurrey});
}

/// @nodoc
class __$$UnBlockProductImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$UnBlockProductImpl>
    implements _$$UnBlockProductImplCopyWith<$Res> {
  __$$UnBlockProductImplCopyWithImpl(
      _$UnBlockProductImpl _value, $Res Function(_$UnBlockProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockAndUnblockQurrey = null,
  }) {
    return _then(_$UnBlockProductImpl(
      blockAndUnblockQurrey: null == blockAndUnblockQurrey
          ? _value.blockAndUnblockQurrey
          : blockAndUnblockQurrey // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockQurrey,
    ));
  }
}

/// @nodoc

class _$UnBlockProductImpl implements UnBlockProduct {
  const _$UnBlockProductImpl({required this.blockAndUnblockQurrey});

  @override
  final BlockAndUnblockQurrey blockAndUnblockQurrey;

  @override
  String toString() {
    return 'InventoryEvent.unBlockProduct(blockAndUnblockQurrey: $blockAndUnblockQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnBlockProductImpl &&
            (identical(other.blockAndUnblockQurrey, blockAndUnblockQurrey) ||
                other.blockAndUnblockQurrey == blockAndUnblockQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockAndUnblockQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnBlockProductImplCopyWith<_$UnBlockProductImpl> get copyWith =>
      __$$UnBlockProductImplCopyWithImpl<_$UnBlockProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return unBlockProduct(blockAndUnblockQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return unBlockProduct?.call(blockAndUnblockQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (unBlockProduct != null) {
      return unBlockProduct(blockAndUnblockQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return unBlockProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return unBlockProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (unBlockProduct != null) {
      return unBlockProduct(this);
    }
    return orElse();
  }
}

abstract class UnBlockProduct implements InventoryEvent {
  const factory UnBlockProduct(
          {required final BlockAndUnblockQurrey blockAndUnblockQurrey}) =
      _$UnBlockProductImpl;

  BlockAndUnblockQurrey get blockAndUnblockQurrey;
  @JsonKey(ignore: true)
  _$$UnBlockProductImplCopyWith<_$UnBlockProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetManagementImplCopyWith<$Res> {
  factory _$$GetManagementImplCopyWith(
          _$GetManagementImpl value, $Res Function(_$GetManagementImpl) then) =
      __$$GetManagementImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel});
}

/// @nodoc
class __$$GetManagementImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$GetManagementImpl>
    implements _$$GetManagementImplCopyWith<$Res> {
  __$$GetManagementImplCopyWithImpl(
      _$GetManagementImpl _value, $Res Function(_$GetManagementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getResponseQurrey = null,
    Object? getQurreyModel = null,
  }) {
    return _then(_$GetManagementImpl(
      getResponseQurrey: null == getResponseQurrey
          ? _value.getResponseQurrey
          : getResponseQurrey // ignore: cast_nullable_to_non_nullable
              as GetResponseQurrey,
      getQurreyModel: null == getQurreyModel
          ? _value.getQurreyModel
          : getQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetManagementImpl implements GetManagement {
  const _$GetManagementImpl(
      {required this.getResponseQurrey, required this.getQurreyModel});

  @override
  final GetResponseQurrey getResponseQurrey;
  @override
  final GetQurreyModel getQurreyModel;

  @override
  String toString() {
    return 'InventoryEvent.getManagement(getResponseQurrey: $getResponseQurrey, getQurreyModel: $getQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetManagementImpl &&
            (identical(other.getResponseQurrey, getResponseQurrey) ||
                other.getResponseQurrey == getResponseQurrey) &&
            (identical(other.getQurreyModel, getQurreyModel) ||
                other.getQurreyModel == getQurreyModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getResponseQurrey, getQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetManagementImplCopyWith<_$GetManagementImpl> get copyWith =>
      __$$GetManagementImplCopyWithImpl<_$GetManagementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return getManagement(getResponseQurrey, getQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return getManagement?.call(getResponseQurrey, getQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getManagement != null) {
      return getManagement(getResponseQurrey, getQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return getManagement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return getManagement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (getManagement != null) {
      return getManagement(this);
    }
    return orElse();
  }
}

abstract class GetManagement implements InventoryEvent {
  const factory GetManagement(
      {required final GetResponseQurrey getResponseQurrey,
      required final GetQurreyModel getQurreyModel}) = _$GetManagementImpl;

  GetResponseQurrey get getResponseQurrey;
  GetQurreyModel get getQurreyModel;
  @JsonKey(ignore: true)
  _$$GetManagementImplCopyWith<_$GetManagementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCatogoryImplCopyWith<$Res> {
  factory _$$SelectCatogoryImplCopyWith(_$SelectCatogoryImpl value,
          $Res Function(_$SelectCatogoryImpl) then) =
      __$$SelectCatogoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedCatogory, String catogory});
}

/// @nodoc
class __$$SelectCatogoryImplCopyWithImpl<$Res>
    extends _$InventoryEventCopyWithImpl<$Res, _$SelectCatogoryImpl>
    implements _$$SelectCatogoryImplCopyWith<$Res> {
  __$$SelectCatogoryImplCopyWithImpl(
      _$SelectCatogoryImpl _value, $Res Function(_$SelectCatogoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCatogory = null,
    Object? catogory = null,
  }) {
    return _then(_$SelectCatogoryImpl(
      selectedCatogory: null == selectedCatogory
          ? _value.selectedCatogory
          : selectedCatogory // ignore: cast_nullable_to_non_nullable
              as int,
      catogory: null == catogory
          ? _value.catogory
          : catogory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCatogoryImpl implements _SelectCatogory {
  const _$SelectCatogoryImpl(
      {required this.selectedCatogory, required this.catogory});

  @override
  final int selectedCatogory;
  @override
  final String catogory;

  @override
  String toString() {
    return 'InventoryEvent.selectCatogory(selectedCatogory: $selectedCatogory, catogory: $catogory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCatogoryImpl &&
            (identical(other.selectedCatogory, selectedCatogory) ||
                other.selectedCatogory == selectedCatogory) &&
            (identical(other.catogory, catogory) ||
                other.catogory == catogory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCatogory, catogory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCatogoryImplCopyWith<_$SelectCatogoryImpl> get copyWith =>
      __$$SelectCatogoryImplCopyWithImpl<_$SelectCatogoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetResponseQurrey getResponseQurrey)
        getInventoryCall,
    required TResult Function(AddInventoryModel addInventoryModel) addInventory,
    required TResult Function() postImage,
    required TResult Function(UpdateInventoryModel updateInventoryModel)
        updateProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        blockProduct,
    required TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)
        unBlockProduct,
    required TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)
        getManagement,
    required TResult Function(int selectedCatogory, String catogory)
        selectCatogory,
  }) {
    return selectCatogory(selectedCatogory, catogory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult? Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult? Function()? postImage,
    TResult? Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        blockProduct,
    TResult? Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult? Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult? Function(int selectedCatogory, String catogory)? selectCatogory,
  }) {
    return selectCatogory?.call(selectedCatogory, catogory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetResponseQurrey getResponseQurrey)? getInventoryCall,
    TResult Function(AddInventoryModel addInventoryModel)? addInventory,
    TResult Function()? postImage,
    TResult Function(UpdateInventoryModel updateInventoryModel)? updateProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)? blockProduct,
    TResult Function(BlockAndUnblockQurrey blockAndUnblockQurrey)?
        unBlockProduct,
    TResult Function(
            GetResponseQurrey getResponseQurrey, GetQurreyModel getQurreyModel)?
        getManagement,
    TResult Function(int selectedCatogory, String catogory)? selectCatogory,
    required TResult orElse(),
  }) {
    if (selectCatogory != null) {
      return selectCatogory(selectedCatogory, catogory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInventoryCall value) getInventoryCall,
    required TResult Function(AddInventory value) addInventory,
    required TResult Function(postImages value) postImage,
    required TResult Function(UpdateProduct value) updateProduct,
    required TResult Function(BlockProduct value) blockProduct,
    required TResult Function(UnBlockProduct value) unBlockProduct,
    required TResult Function(GetManagement value) getManagement,
    required TResult Function(_SelectCatogory value) selectCatogory,
  }) {
    return selectCatogory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInventoryCall value)? getInventoryCall,
    TResult? Function(AddInventory value)? addInventory,
    TResult? Function(postImages value)? postImage,
    TResult? Function(UpdateProduct value)? updateProduct,
    TResult? Function(BlockProduct value)? blockProduct,
    TResult? Function(UnBlockProduct value)? unBlockProduct,
    TResult? Function(GetManagement value)? getManagement,
    TResult? Function(_SelectCatogory value)? selectCatogory,
  }) {
    return selectCatogory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInventoryCall value)? getInventoryCall,
    TResult Function(AddInventory value)? addInventory,
    TResult Function(postImages value)? postImage,
    TResult Function(UpdateProduct value)? updateProduct,
    TResult Function(BlockProduct value)? blockProduct,
    TResult Function(UnBlockProduct value)? unBlockProduct,
    TResult Function(GetManagement value)? getManagement,
    TResult Function(_SelectCatogory value)? selectCatogory,
    required TResult orElse(),
  }) {
    if (selectCatogory != null) {
      return selectCatogory(this);
    }
    return orElse();
  }
}

abstract class _SelectCatogory implements InventoryEvent {
  const factory _SelectCatogory(
      {required final int selectedCatogory,
      required final String catogory}) = _$SelectCatogoryImpl;

  int get selectedCatogory;
  String get catogory;
  @JsonKey(ignore: true)
  _$$SelectCatogoryImplCopyWith<_$SelectCatogoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isWishlisted => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  GetInventoryRespModel? get getInventoryRespModel =>
      throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  AddInventoryModel? get addInventoryModel =>
      throw _privateConstructorUsedError;
  AddInventoryRespModel? get addInventoryRespModel =>
      throw _privateConstructorUsedError;
  bool get isImageUploading => throw _privateConstructorUsedError;
  ImageModel? get imageModel => throw _privateConstructorUsedError;
  String? get catogory => throw _privateConstructorUsedError;
  AddInventoryImageQurreyModel? get addInventoryImageQurreyModel =>
      throw _privateConstructorUsedError;
  UpdateInventoryRespModel? get updateInventoryRespModel =>
      throw _privateConstructorUsedError;
  bool get isAddImage => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  bool get isUnBlocked => throw _privateConstructorUsedError;
  bool get isChange => throw _privateConstructorUsedError;
  GetManagementRespModel? get getManagementRespModel =>
      throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryStateCopyWith<InventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryStateCopyWith<$Res> {
  factory $InventoryStateCopyWith(
          InventoryState value, $Res Function(InventoryState) then) =
      _$InventoryStateCopyWithImpl<$Res, InventoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? isWishlisted,
      bool isBlocked,
      GetInventoryRespModel? getInventoryRespModel,
      bool isAdded,
      AddInventoryModel? addInventoryModel,
      AddInventoryRespModel? addInventoryRespModel,
      bool isImageUploading,
      ImageModel? imageModel,
      String? catogory,
      AddInventoryImageQurreyModel? addInventoryImageQurreyModel,
      UpdateInventoryRespModel? updateInventoryRespModel,
      bool isAddImage,
      bool isUpdate,
      bool isUnBlocked,
      bool isChange,
      GetManagementRespModel? getManagementRespModel,
      int? categoryId});
}

/// @nodoc
class _$InventoryStateCopyWithImpl<$Res, $Val extends InventoryState>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._value, this._then);

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
    Object? isWishlisted = freezed,
    Object? isBlocked = null,
    Object? getInventoryRespModel = freezed,
    Object? isAdded = null,
    Object? addInventoryModel = freezed,
    Object? addInventoryRespModel = freezed,
    Object? isImageUploading = null,
    Object? imageModel = freezed,
    Object? catogory = freezed,
    Object? addInventoryImageQurreyModel = freezed,
    Object? updateInventoryRespModel = freezed,
    Object? isAddImage = null,
    Object? isUpdate = null,
    Object? isUnBlocked = null,
    Object? isChange = null,
    Object? getManagementRespModel = freezed,
    Object? categoryId = freezed,
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
      isWishlisted: freezed == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      getInventoryRespModel: freezed == getInventoryRespModel
          ? _value.getInventoryRespModel
          : getInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as GetInventoryRespModel?,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      addInventoryModel: freezed == addInventoryModel
          ? _value.addInventoryModel
          : addInventoryModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryModel?,
      addInventoryRespModel: freezed == addInventoryRespModel
          ? _value.addInventoryRespModel
          : addInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryRespModel?,
      isImageUploading: null == isImageUploading
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageModel: freezed == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      catogory: freezed == catogory
          ? _value.catogory
          : catogory // ignore: cast_nullable_to_non_nullable
              as String?,
      addInventoryImageQurreyModel: freezed == addInventoryImageQurreyModel
          ? _value.addInventoryImageQurreyModel
          : addInventoryImageQurreyModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryImageQurreyModel?,
      updateInventoryRespModel: freezed == updateInventoryRespModel
          ? _value.updateInventoryRespModel
          : updateInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateInventoryRespModel?,
      isAddImage: null == isAddImage
          ? _value.isAddImage
          : isAddImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isChange: null == isChange
          ? _value.isChange
          : isChange // ignore: cast_nullable_to_non_nullable
              as bool,
      getManagementRespModel: freezed == getManagementRespModel
          ? _value.getManagementRespModel
          : getManagementRespModel // ignore: cast_nullable_to_non_nullable
              as GetManagementRespModel?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $InventoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? isWishlisted,
      bool isBlocked,
      GetInventoryRespModel? getInventoryRespModel,
      bool isAdded,
      AddInventoryModel? addInventoryModel,
      AddInventoryRespModel? addInventoryRespModel,
      bool isImageUploading,
      ImageModel? imageModel,
      String? catogory,
      AddInventoryImageQurreyModel? addInventoryImageQurreyModel,
      UpdateInventoryRespModel? updateInventoryRespModel,
      bool isAddImage,
      bool isUpdate,
      bool isUnBlocked,
      bool isChange,
      GetManagementRespModel? getManagementRespModel,
      int? categoryId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$InventoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? isWishlisted = freezed,
    Object? isBlocked = null,
    Object? getInventoryRespModel = freezed,
    Object? isAdded = null,
    Object? addInventoryModel = freezed,
    Object? addInventoryRespModel = freezed,
    Object? isImageUploading = null,
    Object? imageModel = freezed,
    Object? catogory = freezed,
    Object? addInventoryImageQurreyModel = freezed,
    Object? updateInventoryRespModel = freezed,
    Object? isAddImage = null,
    Object? isUpdate = null,
    Object? isUnBlocked = null,
    Object? isChange = null,
    Object? getManagementRespModel = freezed,
    Object? categoryId = freezed,
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
      isWishlisted: freezed == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      getInventoryRespModel: freezed == getInventoryRespModel
          ? _value.getInventoryRespModel
          : getInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as GetInventoryRespModel?,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      addInventoryModel: freezed == addInventoryModel
          ? _value.addInventoryModel
          : addInventoryModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryModel?,
      addInventoryRespModel: freezed == addInventoryRespModel
          ? _value.addInventoryRespModel
          : addInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryRespModel?,
      isImageUploading: null == isImageUploading
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageModel: freezed == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      catogory: freezed == catogory
          ? _value.catogory
          : catogory // ignore: cast_nullable_to_non_nullable
              as String?,
      addInventoryImageQurreyModel: freezed == addInventoryImageQurreyModel
          ? _value.addInventoryImageQurreyModel
          : addInventoryImageQurreyModel // ignore: cast_nullable_to_non_nullable
              as AddInventoryImageQurreyModel?,
      updateInventoryRespModel: freezed == updateInventoryRespModel
          ? _value.updateInventoryRespModel
          : updateInventoryRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateInventoryRespModel?,
      isAddImage: null == isAddImage
          ? _value.isAddImage
          : isAddImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isChange: null == isChange
          ? _value.isChange
          : isChange // ignore: cast_nullable_to_non_nullable
              as bool,
      getManagementRespModel: freezed == getManagementRespModel
          ? _value.getManagementRespModel
          : getManagementRespModel // ignore: cast_nullable_to_non_nullable
              as GetManagementRespModel?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.isWishlisted,
      required this.isBlocked,
      this.getInventoryRespModel,
      required this.isAdded,
      this.addInventoryModel,
      this.addInventoryRespModel,
      required this.isImageUploading,
      this.imageModel,
      this.catogory,
      this.addInventoryImageQurreyModel,
      this.updateInventoryRespModel,
      required this.isAddImage,
      required this.isUpdate,
      required this.isUnBlocked,
      required this.isChange,
      this.getManagementRespModel,
      this.categoryId});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool? isWishlisted;
  @override
  final bool isBlocked;
  @override
  final GetInventoryRespModel? getInventoryRespModel;
  @override
  final bool isAdded;
  @override
  final AddInventoryModel? addInventoryModel;
  @override
  final AddInventoryRespModel? addInventoryRespModel;
  @override
  final bool isImageUploading;
  @override
  final ImageModel? imageModel;
  @override
  final String? catogory;
  @override
  final AddInventoryImageQurreyModel? addInventoryImageQurreyModel;
  @override
  final UpdateInventoryRespModel? updateInventoryRespModel;
  @override
  final bool isAddImage;
  @override
  final bool isUpdate;
  @override
  final bool isUnBlocked;
  @override
  final bool isChange;
  @override
  final GetManagementRespModel? getManagementRespModel;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'InventoryState(isLoading: $isLoading, hasError: $hasError, message: $message, isWishlisted: $isWishlisted, isBlocked: $isBlocked, getInventoryRespModel: $getInventoryRespModel, isAdded: $isAdded, addInventoryModel: $addInventoryModel, addInventoryRespModel: $addInventoryRespModel, isImageUploading: $isImageUploading, imageModel: $imageModel, catogory: $catogory, addInventoryImageQurreyModel: $addInventoryImageQurreyModel, updateInventoryRespModel: $updateInventoryRespModel, isAddImage: $isAddImage, isUpdate: $isUpdate, isUnBlocked: $isUnBlocked, isChange: $isChange, getManagementRespModel: $getManagementRespModel, categoryId: $categoryId)';
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
            (identical(other.isWishlisted, isWishlisted) ||
                other.isWishlisted == isWishlisted) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.getInventoryRespModel, getInventoryRespModel) ||
                other.getInventoryRespModel == getInventoryRespModel) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.addInventoryModel, addInventoryModel) ||
                other.addInventoryModel == addInventoryModel) &&
            (identical(other.addInventoryRespModel, addInventoryRespModel) ||
                other.addInventoryRespModel == addInventoryRespModel) &&
            (identical(other.isImageUploading, isImageUploading) ||
                other.isImageUploading == isImageUploading) &&
            (identical(other.imageModel, imageModel) ||
                other.imageModel == imageModel) &&
            (identical(other.catogory, catogory) ||
                other.catogory == catogory) &&
            (identical(other.addInventoryImageQurreyModel,
                    addInventoryImageQurreyModel) ||
                other.addInventoryImageQurreyModel ==
                    addInventoryImageQurreyModel) &&
            (identical(
                    other.updateInventoryRespModel, updateInventoryRespModel) ||
                other.updateInventoryRespModel == updateInventoryRespModel) &&
            (identical(other.isAddImage, isAddImage) ||
                other.isAddImage == isAddImage) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate) &&
            (identical(other.isUnBlocked, isUnBlocked) ||
                other.isUnBlocked == isUnBlocked) &&
            (identical(other.isChange, isChange) ||
                other.isChange == isChange) &&
            (identical(other.getManagementRespModel, getManagementRespModel) ||
                other.getManagementRespModel == getManagementRespModel) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        message,
        isWishlisted,
        isBlocked,
        getInventoryRespModel,
        isAdded,
        addInventoryModel,
        addInventoryRespModel,
        isImageUploading,
        imageModel,
        catogory,
        addInventoryImageQurreyModel,
        updateInventoryRespModel,
        isAddImage,
        isUpdate,
        isUnBlocked,
        isChange,
        getManagementRespModel,
        categoryId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements InventoryState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final bool? isWishlisted,
      required final bool isBlocked,
      final GetInventoryRespModel? getInventoryRespModel,
      required final bool isAdded,
      final AddInventoryModel? addInventoryModel,
      final AddInventoryRespModel? addInventoryRespModel,
      required final bool isImageUploading,
      final ImageModel? imageModel,
      final String? catogory,
      final AddInventoryImageQurreyModel? addInventoryImageQurreyModel,
      final UpdateInventoryRespModel? updateInventoryRespModel,
      required final bool isAddImage,
      required final bool isUpdate,
      required final bool isUnBlocked,
      required final bool isChange,
      final GetManagementRespModel? getManagementRespModel,
      final int? categoryId}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool? get isWishlisted;
  @override
  bool get isBlocked;
  @override
  GetInventoryRespModel? get getInventoryRespModel;
  @override
  bool get isAdded;
  @override
  AddInventoryModel? get addInventoryModel;
  @override
  AddInventoryRespModel? get addInventoryRespModel;
  @override
  bool get isImageUploading;
  @override
  ImageModel? get imageModel;
  @override
  String? get catogory;
  @override
  AddInventoryImageQurreyModel? get addInventoryImageQurreyModel;
  @override
  UpdateInventoryRespModel? get updateInventoryRespModel;
  @override
  bool get isAddImage;
  @override
  bool get isUpdate;
  @override
  bool get isUnBlocked;
  @override
  bool get isChange;
  @override
  GetManagementRespModel? get getManagementRespModel;
  @override
  int? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
