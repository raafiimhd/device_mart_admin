// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRespModel _$UserRespModelFromJson(Map<String, dynamic> json) =>
    UserRespModel(
      statusCode: json['statusCode'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserRespModelToJson(UserRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
    };
