// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCategoryImplCopyWith<$Res> {
  factory _$$GetCategoryImplCopyWith(
          _$GetCategoryImpl value, $Res Function(_$GetCategoryImpl) then) =
      __$$GetCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCategoryQurreyModel getCategoryQurreyModel});
}

/// @nodoc
class __$$GetCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetCategoryImpl>
    implements _$$GetCategoryImplCopyWith<$Res> {
  __$$GetCategoryImplCopyWithImpl(
      _$GetCategoryImpl _value, $Res Function(_$GetCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoryQurreyModel = null,
  }) {
    return _then(_$GetCategoryImpl(
      getCategoryQurreyModel: null == getCategoryQurreyModel
          ? _value.getCategoryQurreyModel
          : getCategoryQurreyModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryQurreyModel,
    ));
  }
}

/// @nodoc

class _$GetCategoryImpl implements GetCategory {
  const _$GetCategoryImpl({required this.getCategoryQurreyModel});

  @override
  final GetCategoryQurreyModel getCategoryQurreyModel;

  @override
  String toString() {
    return 'CategoryEvent.getCategory(getCategoryQurreyModel: $getCategoryQurreyModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryImpl &&
            (identical(other.getCategoryQurreyModel, getCategoryQurreyModel) ||
                other.getCategoryQurreyModel == getCategoryQurreyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCategoryQurreyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryImplCopyWith<_$GetCategoryImpl> get copyWith =>
      __$$GetCategoryImplCopyWithImpl<_$GetCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return getCategory(getCategoryQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return getCategory?.call(getCategoryQurreyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(getCategoryQurreyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class GetCategory implements CategoryEvent {
  const factory GetCategory(
          {required final GetCategoryQurreyModel getCategoryQurreyModel}) =
      _$GetCategoryImpl;

  GetCategoryQurreyModel get getCategoryQurreyModel;
  @JsonKey(ignore: true)
  _$$GetCategoryImplCopyWith<_$GetCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCategoryImplCopyWith<$Res> {
  factory _$$AddCategoryImplCopyWith(
          _$AddCategoryImpl value, $Res Function(_$AddCategoryImpl) then) =
      __$$AddCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCategoryModel addCategoryModel});
}

/// @nodoc
class __$$AddCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$AddCategoryImpl>
    implements _$$AddCategoryImplCopyWith<$Res> {
  __$$AddCategoryImplCopyWithImpl(
      _$AddCategoryImpl _value, $Res Function(_$AddCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCategoryModel = null,
  }) {
    return _then(_$AddCategoryImpl(
      addCategoryModel: null == addCategoryModel
          ? _value.addCategoryModel
          : addCategoryModel // ignore: cast_nullable_to_non_nullable
              as AddCategoryModel,
    ));
  }
}

/// @nodoc

class _$AddCategoryImpl implements AddCategory {
  const _$AddCategoryImpl({required this.addCategoryModel});

  @override
  final AddCategoryModel addCategoryModel;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(addCategoryModel: $addCategoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryImpl &&
            (identical(other.addCategoryModel, addCategoryModel) ||
                other.addCategoryModel == addCategoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addCategoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      __$$AddCategoryImplCopyWithImpl<_$AddCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return addCategory(addCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return addCategory?.call(addCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(addCategoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategory implements CategoryEvent {
  const factory AddCategory(
      {required final AddCategoryModel addCategoryModel}) = _$AddCategoryImpl;

  AddCategoryModel get addCategoryModel;
  @JsonKey(ignore: true)
  _$$AddCategoryImplCopyWith<_$AddCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryImplCopyWith<$Res> {
  factory _$$UpdateCategoryImplCopyWith(_$UpdateCategoryImpl value,
          $Res Function(_$UpdateCategoryImpl) then) =
      __$$UpdateCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateCategoryModel updateCategoryModel});
}

/// @nodoc
class __$$UpdateCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$UpdateCategoryImpl>
    implements _$$UpdateCategoryImplCopyWith<$Res> {
  __$$UpdateCategoryImplCopyWithImpl(
      _$UpdateCategoryImpl _value, $Res Function(_$UpdateCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateCategoryModel = null,
  }) {
    return _then(_$UpdateCategoryImpl(
      updateCategoryModel: null == updateCategoryModel
          ? _value.updateCategoryModel
          : updateCategoryModel // ignore: cast_nullable_to_non_nullable
              as UpdateCategoryModel,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryImpl implements UpdateCategory {
  const _$UpdateCategoryImpl({required this.updateCategoryModel});

  @override
  final UpdateCategoryModel updateCategoryModel;

  @override
  String toString() {
    return 'CategoryEvent.updateCategory(updateCategoryModel: $updateCategoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryImpl &&
            (identical(other.updateCategoryModel, updateCategoryModel) ||
                other.updateCategoryModel == updateCategoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateCategoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      __$$UpdateCategoryImplCopyWithImpl<_$UpdateCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return updateCategory(updateCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return updateCategory?.call(updateCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(updateCategoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateCategory implements CategoryEvent {
  const factory UpdateCategory(
          {required final UpdateCategoryModel updateCategoryModel}) =
      _$UpdateCategoryImpl;

  UpdateCategoryModel get updateCategoryModel;
  @JsonKey(ignore: true)
  _$$UpdateCategoryImplCopyWith<_$UpdateCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$editNameImplCopyWith<$Res> {
  factory _$$editNameImplCopyWith(
          _$editNameImpl value, $Res Function(_$editNameImpl) then) =
      __$$editNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryName});
}

/// @nodoc
class __$$editNameImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$editNameImpl>
    implements _$$editNameImplCopyWith<$Res> {
  __$$editNameImplCopyWithImpl(
      _$editNameImpl _value, $Res Function(_$editNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
  }) {
    return _then(_$editNameImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$editNameImpl implements _editName {
  const _$editNameImpl({required this.categoryName});

  @override
  final String categoryName;

  @override
  String toString() {
    return 'CategoryEvent.editName(categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$editNameImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$editNameImplCopyWith<_$editNameImpl> get copyWith =>
      __$$editNameImplCopyWithImpl<_$editNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return editName(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return editName?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return editName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return editName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(this);
    }
    return orElse();
  }
}

abstract class _editName implements CategoryEvent {
  const factory _editName({required final String categoryName}) =
      _$editNameImpl;

  String get categoryName;
  @JsonKey(ignore: true)
  _$$editNameImplCopyWith<_$editNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImagesImplCopyWith<$Res> {
  factory _$$PickImagesImplCopyWith(
          _$PickImagesImpl value, $Res Function(_$PickImagesImpl) then) =
      __$$PickImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImagesImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$PickImagesImpl>
    implements _$$PickImagesImplCopyWith<$Res> {
  __$$PickImagesImplCopyWithImpl(
      _$PickImagesImpl _value, $Res Function(_$PickImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImagesImpl implements PickImages {
  const _$PickImagesImpl();

  @override
  String toString() {
    return 'CategoryEvent.pickImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImages implements CategoryEvent {
  const factory PickImages() = _$PickImagesImpl;
}

/// @nodoc
abstract class _$$BlockCategoryImplCopyWith<$Res> {
  factory _$$BlockCategoryImplCopyWith(
          _$BlockCategoryImpl value, $Res Function(_$BlockCategoryImpl) then) =
      __$$BlockCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey});
}

/// @nodoc
class __$$BlockCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$BlockCategoryImpl>
    implements _$$BlockCategoryImplCopyWith<$Res> {
  __$$BlockCategoryImplCopyWithImpl(
      _$BlockCategoryImpl _value, $Res Function(_$BlockCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockUnblockUserQurrey = null,
  }) {
    return _then(_$BlockCategoryImpl(
      blockUnblockUserQurrey: null == blockUnblockUserQurrey
          ? _value.blockUnblockUserQurrey
          : blockUnblockUserQurrey // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockCategoryModelQurrey,
    ));
  }
}

/// @nodoc

class _$BlockCategoryImpl implements BlockCategory {
  const _$BlockCategoryImpl({required this.blockUnblockUserQurrey});

  @override
  final BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey;

  @override
  String toString() {
    return 'CategoryEvent.blockCategory(blockUnblockUserQurrey: $blockUnblockUserQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockCategoryImpl &&
            (identical(other.blockUnblockUserQurrey, blockUnblockUserQurrey) ||
                other.blockUnblockUserQurrey == blockUnblockUserQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockUnblockUserQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockCategoryImplCopyWith<_$BlockCategoryImpl> get copyWith =>
      __$$BlockCategoryImplCopyWithImpl<_$BlockCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return blockCategory(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return blockCategory?.call(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (blockCategory != null) {
      return blockCategory(blockUnblockUserQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return blockCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return blockCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (blockCategory != null) {
      return blockCategory(this);
    }
    return orElse();
  }
}

abstract class BlockCategory implements CategoryEvent {
  const factory BlockCategory(
      {required final BlockAndUnblockCategoryModelQurrey
          blockUnblockUserQurrey}) = _$BlockCategoryImpl;

  BlockAndUnblockCategoryModelQurrey get blockUnblockUserQurrey;
  @JsonKey(ignore: true)
  _$$BlockCategoryImplCopyWith<_$BlockCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnBlockCategoryImplCopyWith<$Res> {
  factory _$$UnBlockCategoryImplCopyWith(_$UnBlockCategoryImpl value,
          $Res Function(_$UnBlockCategoryImpl) then) =
      __$$UnBlockCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey});
}

/// @nodoc
class __$$UnBlockCategoryImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$UnBlockCategoryImpl>
    implements _$$UnBlockCategoryImplCopyWith<$Res> {
  __$$UnBlockCategoryImplCopyWithImpl(
      _$UnBlockCategoryImpl _value, $Res Function(_$UnBlockCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockUnblockUserQurrey = null,
  }) {
    return _then(_$UnBlockCategoryImpl(
      blockUnblockUserQurrey: null == blockUnblockUserQurrey
          ? _value.blockUnblockUserQurrey
          : blockUnblockUserQurrey // ignore: cast_nullable_to_non_nullable
              as BlockAndUnblockCategoryModelQurrey,
    ));
  }
}

/// @nodoc

class _$UnBlockCategoryImpl implements UnBlockCategory {
  const _$UnBlockCategoryImpl({required this.blockUnblockUserQurrey});

  @override
  final BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey;

  @override
  String toString() {
    return 'CategoryEvent.unBlockCategory(blockUnblockUserQurrey: $blockUnblockUserQurrey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnBlockCategoryImpl &&
            (identical(other.blockUnblockUserQurrey, blockUnblockUserQurrey) ||
                other.blockUnblockUserQurrey == blockUnblockUserQurrey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockUnblockUserQurrey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnBlockCategoryImplCopyWith<_$UnBlockCategoryImpl> get copyWith =>
      __$$UnBlockCategoryImplCopyWithImpl<_$UnBlockCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)
        getCategory,
    required TResult Function(AddCategoryModel addCategoryModel) addCategory,
    required TResult Function(UpdateCategoryModel updateCategoryModel)
        updateCategory,
    required TResult Function(String categoryName) editName,
    required TResult Function() pickImage,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        blockCategory,
    required TResult Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)
        unBlockCategory,
  }) {
    return unBlockCategory(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult? Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult? Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult? Function(String categoryName)? editName,
    TResult? Function()? pickImage,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult? Function(
            BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
  }) {
    return unBlockCategory?.call(blockUnblockUserQurrey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCategoryQurreyModel getCategoryQurreyModel)?
        getCategory,
    TResult Function(AddCategoryModel addCategoryModel)? addCategory,
    TResult Function(UpdateCategoryModel updateCategoryModel)? updateCategory,
    TResult Function(String categoryName)? editName,
    TResult Function()? pickImage,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        blockCategory,
    TResult Function(BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey)?
        unBlockCategory,
    required TResult orElse(),
  }) {
    if (unBlockCategory != null) {
      return unBlockCategory(blockUnblockUserQurrey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategory value) getCategory,
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(_editName value) editName,
    required TResult Function(PickImages value) pickImage,
    required TResult Function(BlockCategory value) blockCategory,
    required TResult Function(UnBlockCategory value) unBlockCategory,
  }) {
    return unBlockCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCategory value)? getCategory,
    TResult? Function(AddCategory value)? addCategory,
    TResult? Function(UpdateCategory value)? updateCategory,
    TResult? Function(_editName value)? editName,
    TResult? Function(PickImages value)? pickImage,
    TResult? Function(BlockCategory value)? blockCategory,
    TResult? Function(UnBlockCategory value)? unBlockCategory,
  }) {
    return unBlockCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategory value)? getCategory,
    TResult Function(AddCategory value)? addCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(_editName value)? editName,
    TResult Function(PickImages value)? pickImage,
    TResult Function(BlockCategory value)? blockCategory,
    TResult Function(UnBlockCategory value)? unBlockCategory,
    required TResult orElse(),
  }) {
    if (unBlockCategory != null) {
      return unBlockCategory(this);
    }
    return orElse();
  }
}

abstract class UnBlockCategory implements CategoryEvent {
  const factory UnBlockCategory(
      {required final BlockAndUnblockCategoryModelQurrey
          blockUnblockUserQurrey}) = _$UnBlockCategoryImpl;

  BlockAndUnblockCategoryModelQurrey get blockUnblockUserQurrey;
  @JsonKey(ignore: true)
  _$$UnBlockCategoryImplCopyWith<_$UnBlockCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isAdding => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get showMessage => throw _privateConstructorUsedError;
  bool get isupdating => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ImageModel? get imageModel => throw _privateConstructorUsedError;
  String? get networkImage => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  bool get isImageUploading => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;
  bool get isUnBlocked => throw _privateConstructorUsedError;
  bool get isChange => throw _privateConstructorUsedError;
  BlockUnlbockResponseModel? get blockUnlbockResponseModel =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get images => throw _privateConstructorUsedError;
  GetCategoryRespModel? get getCatogereyResponseModel =>
      throw _privateConstructorUsedError;
  AddCategoryRespModel? get addCategoryRespModel =>
      throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  UpdateCategoryRespModel? get updateCategoryRespModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      bool isupdating,
      String? message,
      ImageModel? imageModel,
      String? networkImage,
      String? categoryName,
      bool isImageUploading,
      bool isBlocked,
      bool isUnBlocked,
      bool isChange,
      BlockUnlbockResponseModel? blockUnlbockResponseModel,
      Map<String, dynamic>? images,
      GetCategoryRespModel? getCatogereyResponseModel,
      AddCategoryRespModel? addCategoryRespModel,
      int? id,
      UpdateCategoryRespModel? updateCategoryRespModel});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? isupdating = null,
    Object? message = freezed,
    Object? imageModel = freezed,
    Object? networkImage = freezed,
    Object? categoryName = freezed,
    Object? isImageUploading = null,
    Object? isBlocked = null,
    Object? isUnBlocked = null,
    Object? isChange = null,
    Object? blockUnlbockResponseModel = freezed,
    Object? images = freezed,
    Object? getCatogereyResponseModel = freezed,
    Object? addCategoryRespModel = freezed,
    Object? id = freezed,
    Object? updateCategoryRespModel = freezed,
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isupdating: null == isupdating
          ? _value.isupdating
          : isupdating // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      imageModel: freezed == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      networkImage: freezed == networkImage
          ? _value.networkImage
          : networkImage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isImageUploading: null == isImageUploading
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isChange: null == isChange
          ? _value.isChange
          : isChange // ignore: cast_nullable_to_non_nullable
              as bool,
      blockUnlbockResponseModel: freezed == blockUnlbockResponseModel
          ? _value.blockUnlbockResponseModel
          : blockUnlbockResponseModel // ignore: cast_nullable_to_non_nullable
              as BlockUnlbockResponseModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      getCatogereyResponseModel: freezed == getCatogereyResponseModel
          ? _value.getCatogereyResponseModel
          : getCatogereyResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryRespModel?,
      addCategoryRespModel: freezed == addCategoryRespModel
          ? _value.addCategoryRespModel
          : addCategoryRespModel // ignore: cast_nullable_to_non_nullable
              as AddCategoryRespModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCategoryRespModel: freezed == updateCategoryRespModel
          ? _value.updateCategoryRespModel
          : updateCategoryRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateCategoryRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isAdding,
      bool isDone,
      bool showMessage,
      bool isupdating,
      String? message,
      ImageModel? imageModel,
      String? networkImage,
      String? categoryName,
      bool isImageUploading,
      bool isBlocked,
      bool isUnBlocked,
      bool isChange,
      BlockUnlbockResponseModel? blockUnlbockResponseModel,
      Map<String, dynamic>? images,
      GetCategoryRespModel? getCatogereyResponseModel,
      AddCategoryRespModel? addCategoryRespModel,
      int? id,
      UpdateCategoryRespModel? updateCategoryRespModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isAdding = null,
    Object? isDone = null,
    Object? showMessage = null,
    Object? isupdating = null,
    Object? message = freezed,
    Object? imageModel = freezed,
    Object? networkImage = freezed,
    Object? categoryName = freezed,
    Object? isImageUploading = null,
    Object? isBlocked = null,
    Object? isUnBlocked = null,
    Object? isChange = null,
    Object? blockUnlbockResponseModel = freezed,
    Object? images = freezed,
    Object? getCatogereyResponseModel = freezed,
    Object? addCategoryRespModel = freezed,
    Object? id = freezed,
    Object? updateCategoryRespModel = freezed,
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
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isupdating: null == isupdating
          ? _value.isupdating
          : isupdating // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      imageModel: freezed == imageModel
          ? _value.imageModel
          : imageModel // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      networkImage: freezed == networkImage
          ? _value.networkImage
          : networkImage // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isImageUploading: null == isImageUploading
          ? _value.isImageUploading
          : isImageUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnBlocked: null == isUnBlocked
          ? _value.isUnBlocked
          : isUnBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      isChange: null == isChange
          ? _value.isChange
          : isChange // ignore: cast_nullable_to_non_nullable
              as bool,
      blockUnlbockResponseModel: freezed == blockUnlbockResponseModel
          ? _value.blockUnlbockResponseModel
          : blockUnlbockResponseModel // ignore: cast_nullable_to_non_nullable
              as BlockUnlbockResponseModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      getCatogereyResponseModel: freezed == getCatogereyResponseModel
          ? _value.getCatogereyResponseModel
          : getCatogereyResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryRespModel?,
      addCategoryRespModel: freezed == addCategoryRespModel
          ? _value.addCategoryRespModel
          : addCategoryRespModel // ignore: cast_nullable_to_non_nullable
              as AddCategoryRespModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      updateCategoryRespModel: freezed == updateCategoryRespModel
          ? _value.updateCategoryRespModel
          : updateCategoryRespModel // ignore: cast_nullable_to_non_nullable
              as UpdateCategoryRespModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isAdding,
      required this.isDone,
      required this.showMessage,
      required this.isupdating,
      this.message,
      this.imageModel,
      this.networkImage,
      this.categoryName,
      required this.isImageUploading,
      required this.isBlocked,
      required this.isUnBlocked,
      required this.isChange,
      this.blockUnlbockResponseModel,
      final Map<String, dynamic>? images,
      this.getCatogereyResponseModel,
      this.addCategoryRespModel,
      this.id,
      this.updateCategoryRespModel})
      : _images = images;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isAdding;
  @override
  final bool isDone;
  @override
  final bool showMessage;
  @override
  final bool isupdating;
  @override
  final String? message;
  @override
  final ImageModel? imageModel;
  @override
  final String? networkImage;
  @override
  final String? categoryName;
  @override
  final bool isImageUploading;
  @override
  final bool isBlocked;
  @override
  final bool isUnBlocked;
  @override
  final bool isChange;
  @override
  final BlockUnlbockResponseModel? blockUnlbockResponseModel;
  final Map<String, dynamic>? _images;
  @override
  Map<String, dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final GetCategoryRespModel? getCatogereyResponseModel;
  @override
  final AddCategoryRespModel? addCategoryRespModel;
  @override
  final int? id;
  @override
  final UpdateCategoryRespModel? updateCategoryRespModel;

  @override
  String toString() {
    return 'CategoryState(isLoading: $isLoading, hasError: $hasError, isAdding: $isAdding, isDone: $isDone, showMessage: $showMessage, isupdating: $isupdating, message: $message, imageModel: $imageModel, networkImage: $networkImage, categoryName: $categoryName, isImageUploading: $isImageUploading, isBlocked: $isBlocked, isUnBlocked: $isUnBlocked, isChange: $isChange, blockUnlbockResponseModel: $blockUnlbockResponseModel, images: $images, getCatogereyResponseModel: $getCatogereyResponseModel, addCategoryRespModel: $addCategoryRespModel, id: $id, updateCategoryRespModel: $updateCategoryRespModel)';
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
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage) &&
            (identical(other.isupdating, isupdating) ||
                other.isupdating == isupdating) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imageModel, imageModel) ||
                other.imageModel == imageModel) &&
            (identical(other.networkImage, networkImage) ||
                other.networkImage == networkImage) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.isImageUploading, isImageUploading) ||
                other.isImageUploading == isImageUploading) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.isUnBlocked, isUnBlocked) ||
                other.isUnBlocked == isUnBlocked) &&
            (identical(other.isChange, isChange) ||
                other.isChange == isChange) &&
            (identical(other.blockUnlbockResponseModel,
                    blockUnlbockResponseModel) ||
                other.blockUnlbockResponseModel == blockUnlbockResponseModel) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.getCatogereyResponseModel,
                    getCatogereyResponseModel) ||
                other.getCatogereyResponseModel == getCatogereyResponseModel) &&
            (identical(other.addCategoryRespModel, addCategoryRespModel) ||
                other.addCategoryRespModel == addCategoryRespModel) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.updateCategoryRespModel, updateCategoryRespModel) ||
                other.updateCategoryRespModel == updateCategoryRespModel));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        hasError,
        isAdding,
        isDone,
        showMessage,
        isupdating,
        message,
        imageModel,
        networkImage,
        categoryName,
        isImageUploading,
        isBlocked,
        isUnBlocked,
        isChange,
        blockUnlbockResponseModel,
        const DeepCollectionEquality().hash(_images),
        getCatogereyResponseModel,
        addCategoryRespModel,
        id,
        updateCategoryRespModel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CategoryState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isAdding,
      required final bool isDone,
      required final bool showMessage,
      required final bool isupdating,
      final String? message,
      final ImageModel? imageModel,
      final String? networkImage,
      final String? categoryName,
      required final bool isImageUploading,
      required final bool isBlocked,
      required final bool isUnBlocked,
      required final bool isChange,
      final BlockUnlbockResponseModel? blockUnlbockResponseModel,
      final Map<String, dynamic>? images,
      final GetCategoryRespModel? getCatogereyResponseModel,
      final AddCategoryRespModel? addCategoryRespModel,
      final int? id,
      final UpdateCategoryRespModel? updateCategoryRespModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isAdding;
  @override
  bool get isDone;
  @override
  bool get showMessage;
  @override
  bool get isupdating;
  @override
  String? get message;
  @override
  ImageModel? get imageModel;
  @override
  String? get networkImage;
  @override
  String? get categoryName;
  @override
  bool get isImageUploading;
  @override
  bool get isBlocked;
  @override
  bool get isUnBlocked;
  @override
  bool get isChange;
  @override
  BlockUnlbockResponseModel? get blockUnlbockResponseModel;
  @override
  Map<String, dynamic>? get images;
  @override
  GetCategoryRespModel? get getCatogereyResponseModel;
  @override
  AddCategoryRespModel? get addCategoryRespModel;
  @override
  int? get id;
  @override
  UpdateCategoryRespModel? get updateCategoryRespModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
