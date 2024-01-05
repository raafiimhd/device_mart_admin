import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_management_model.g.dart';
@JsonSerializable()
class GetManagementModel {
  String? brand;
  @JsonKey(name: 'category_id')
  int id;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  @JsonKey(name: 'is_wishlisted')
  bool? isWishlisted;
  int? price;
  final Map<String, dynamic>? images;
  @JsonKey(name: 'product_description')
  String? productDes;
  @JsonKey(name: 'product_name')
  String? productName;

  GetManagementModel({this.brand,required this.id, this.isBlocked, this.isWishlisted,
      this.price, this.productDes, this.productName,this.images});

  factory GetManagementModel.fromJson(Map<String, dynamic> json) {
    return _$GetManagementModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetManagementModelToJson(this);
}
