import 'package:json_annotation/json_annotation.dart';

part 'get_order_qurrey_model.g.dart';

@JsonSerializable()
class GetOrderQurreyModel {
  int? page;
  int? count;

  GetOrderQurreyModel({this.page, this.count});

  factory GetOrderQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderQurreyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrderQurreyModelToJson(this);
}
