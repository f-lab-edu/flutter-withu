// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestDtoImpl _$$LoginRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestDtoImpl(
      loginType: $enumDecode(_$LoginTypeEnumMap, json['loginType']),
      loginId: json['loginId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestDtoImplToJson(
        _$LoginRequestDtoImpl instance) =>
    <String, dynamic>{
      'loginType': _$LoginTypeEnumMap[instance.loginType]!,
      'loginId': instance.loginId,
      'password': instance.password,
    };

const _$LoginTypeEnumMap = {
  LoginType.email: 'EMAIL',
  LoginType.kakao: 'KAKAO',
  LoginType.naver: 'NAVER',
  LoginType.apple: 'APPLe',
};
