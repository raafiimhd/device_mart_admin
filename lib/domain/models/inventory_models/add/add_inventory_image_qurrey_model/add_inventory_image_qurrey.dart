import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_inventory_image_qurrey.g.dart';
@JsonSerializable()
class AddInventoryImageQurreyModel {
  @JsonKey(name: 'productID')
  int? id;
   AddInventoryImageQurreyModel({
    this.id,
  });
  factory AddInventoryImageQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$AddInventoryImageQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddInventoryImageQurreyModelToJson(this);
}
