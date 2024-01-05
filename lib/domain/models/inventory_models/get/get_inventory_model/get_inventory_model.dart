
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_inventory_model.g.dart';
@JsonSerializable()
class GetInventoryModel {
  final String? brands;
  @JsonKey(name: 'category_id')
  final int? categoryId;
  final int? id;
  final Map<String, dynamic>? images;
  @JsonKey(name: 'is_blocked')
  final bool? isBlocked;
  @JsonKey(name: 'is_wishlisted')
  final bool? isWishlisted;
  final int? price;
  @JsonKey(name: 'product_description')
  final String? prdctDescp;
  @JsonKey(name: 'product_name')
  final String? prdctName;
  GetInventoryModel({
     this.brands,
     this.categoryId,
     this.id,
     this.images,
     this.isBlocked,
     this.isWishlisted,
     this.price,
     this.prdctDescp,
     this.prdctName,
  });

  factory GetInventoryModel.fromJson(Map<String, dynamic> json) {
    return _$GetInventoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetInventoryModelToJson(this);
}
