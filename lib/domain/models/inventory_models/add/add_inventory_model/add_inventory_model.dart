import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_inventory_model.g.dart';

@JsonSerializable()
class AddInventoryModel {
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_description')
  String? productDesc;
  int? price;
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  AddInventoryModel({this.productName, this.productDesc, this.price, this.id,this.categoryId});
  factory AddInventoryModel.fromJson(Map<String, dynamic> json) {
    return _$AddInventoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$AddInventoryModelToJson(this);
}
