import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class UserModel {
  @JsonKey(name: 'user_name')
  String userName;
  @JsonKey(name: 'created_at')
  String? createdAt;
  String email;
  @JsonKey(name: 'is_blocked')
  bool isBlocked;
  int phone;
  @JsonKey(name: 'user_id')
  int userId;
  UserModel(
      {this.createdAt,
      required this.email,
      required this.isBlocked,
      required this.phone,
      required this.userName,
      required this.userId});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
