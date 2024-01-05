part of 'category_bloc.dart';



@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required bool isLoading,
      required bool hasError,
      required bool isAdding,
      required bool isDone,
      required bool showMessage,
      required bool isupdating,
      String? message,
      ImageModel? imageModel,
      String? networkImage,
      String?categoryName,
      required bool isImageUploading,
      required bool isBlocked,
      required bool isUnBlocked,
      required bool isChange,
      BlockUnlbockResponseModel?blockUnlbockResponseModel,
      Map<String,dynamic>?images,
      GetCategoryRespModel? getCatogereyResponseModel,
      AddCategoryRespModel? addCategoryRespModel,
      int?id,
      UpdateCategoryRespModel? updateCategoryRespModel,
      }) = _Initial;

  factory CategoryState.initial() => const CategoryState(
      isLoading: false,
      showMessage: false,
      isAdding: false,
      hasError: false,
      isImageUploading: false,
      isBlocked: false,
      isUnBlocked: false,
      isChange: false,
      isDone: false,
      isupdating: false,
      networkImage: null
      );
}