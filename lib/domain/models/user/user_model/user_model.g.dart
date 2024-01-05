// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      createdAt: json['created_at'] as String?,
      email: json['email'] as String,
      isBlocked: json['is_blocked'] as bool,
      phone: json['phone'] as int,
      userName: json['user_name'] as String,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_name': instance.userName,
      'created_at': instance.createdAt,
      'email': instance.email,
      'is_blocked': instance.isBlocked,
      'phone': instance.phone,
      'user_id': instance.userId,
    };
