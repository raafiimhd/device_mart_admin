import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_invetory_model.g.dart';

@JsonSerializable()
class UpdateInventoryModel {
  @JsonKey(name: 'product_name')
  String? prdctName;
  @JsonKey(name: 'product_description')
  String? prdctDesc;
  int? price;
  @JsonKey(name: 'productID')
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  UpdateInventoryModel({this.prdctName, this.prdctDesc, this.price, this.id,this.categoryId});

  factory UpdateInventoryModel.fromJson(Map<String, dynamic> json) {
    return _$UpdateInventoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UpdateInventoryModelToJson(this);
}
