// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseDtoImpl _$$SignUpResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseDtoImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      userId: json['userId'] as String?,
      loginId: json['loginId'] as String?,
      birthDate: json['birthDate'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$$SignUpResponseDtoImplToJson(
        _$SignUpResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'userId': instance.userId,
      'loginId': instance.loginId,
      'birthDate': instance.birthDate,
      'sessionId': instance.sessionId,
    };
