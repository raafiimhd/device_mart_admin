part of 'inventory_bloc.dart';

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState({
    required bool isLoading,
    required bool hasError,
    String? message,
    bool? isWishlisted,
    required bool isBlocked,
    GetInventoryRespModel? getInventoryRespModel,
    required bool isAdded,
    AddInventoryModel? addInventoryModel,
    AddInventoryRespModel? addInventoryRespModel,
    required bool isImageUploading,
    ImageModel? imageModel,
    String? catogory,
    AddInventoryImageQurreyModel? addInventoryImageQurreyModel,
    UpdateInventoryRespModel? updateInventoryRespModel,
    required bool isAddImage,
    required bool isUpdate,
    required bool isUnBlocked,
    required bool isChange,
    GetManagementRespModel? getManagementRespModel,
    int?categoryId,
  }) = _Initial;
  factory InventoryState.initial() => const InventoryState(
      isLoading: false,
      hasError: false,
      isBlocked: false,
      isWishlisted: false,
      isAdded: false,
      isImageUploading: false,
      isAddImage: false,
      isUpdate: false,
      isUnBlocked: false,
      isChange: false
      );
}
