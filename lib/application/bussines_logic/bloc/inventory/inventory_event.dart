part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.getInventoryCall(
      {required GetResponseQurrey getResponseQurrey}) = GetInventoryCall;
  const factory InventoryEvent.addInventory(
      {required AddInventoryModel addInventoryModel}) = AddInventory;
  const factory InventoryEvent.postImage() = postImages;
  const factory InventoryEvent.updateProduct(
      {required UpdateInventoryModel updateInventoryModel}) = UpdateProduct;
  const factory InventoryEvent.blockProduct(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey}) = BlockProduct;
  const factory InventoryEvent.unBlockProduct(
      {required BlockAndUnblockQurrey blockAndUnblockQurrey}) = UnBlockProduct;
  const factory InventoryEvent.getManagement(
      {required GetResponseQurrey getResponseQurrey,
      required GetQurreyModel getQurreyModel}) = GetManagement;
  const factory InventoryEvent.selectCatogory(
      {required int selectedCatogory,
      required String catogory}) = _SelectCatogory;
}
