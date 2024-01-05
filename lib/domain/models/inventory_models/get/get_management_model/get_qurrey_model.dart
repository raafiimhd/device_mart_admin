import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_qurrey_model.g.dart';

@JsonSerializable()
class GetQurreyModel {
  @JsonKey(name: 'categoryID')
  int? id;

  GetQurreyModel({
    this.id,
  });
  factory GetQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$GetQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$GetQurreyModelToJson(this);
}
