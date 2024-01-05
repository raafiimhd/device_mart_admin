part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategory({required GetCategoryQurreyModel getCategoryQurreyModel}) = GetCategory;
  const factory CategoryEvent.addCategory(
      {required AddCategoryModel addCategoryModel,}) = AddCategory;
  const factory CategoryEvent.updateCategory(
      {required UpdateCategoryModel updateCategoryModel}) = UpdateCategory;
  const factory CategoryEvent.editName({required String categoryName}) =
      _editName;
  const factory CategoryEvent.pickImage() = PickImages;
  const factory CategoryEvent.blockCategory(
      {required BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey}) = BlockCategory;
  const factory CategoryEvent.unBlockCategory(
      {required BlockAndUnblockCategoryModelQurrey blockUnblockUserQurrey}) = UnBlockCategory;
}
