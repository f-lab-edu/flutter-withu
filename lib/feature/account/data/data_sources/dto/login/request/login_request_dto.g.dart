// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestDtoImpl _$$LoginRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequestDtoImpl(
      accountType: $enumDecode(_$AccountTypeEnumMap, json['accountType']),
      loginType: $enumDecode(_$LoginTypeEnumMap, json['loginType']),
      loginId: json['loginId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestDtoImplToJson(
        _$LoginRequestDtoImpl instance) =>
    <String, dynamic>{
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'loginType': _$LoginTypeEnumMap[instance.loginType]!,
      'loginId': instance.loginId,
      'password': instance.password,
    };

const _$AccountTypeEnumMap = {
  AccountType.company: 'COMPANY',
  AccountType.user: 'USER',
};

const _$LoginTypeEnumMap = {
  LoginType.none: '',
  LoginType.email: 'EMAIL',
  LoginType.kakao: 'KAKAO',
  LoginType.naver: 'NAVER',
  LoginType.apple: 'APPLe',
};
