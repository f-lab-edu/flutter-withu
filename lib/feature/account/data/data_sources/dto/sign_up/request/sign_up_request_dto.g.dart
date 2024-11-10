// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestDtoImpl _$$SignUpRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestDtoImpl(
      name: json['name'] as String,
      birth: json['birth'] as String,
      cellPhoneNo: json['cellPhoneNo'] as String,
      loginId: json['loginId'] as String,
      password: json['password'] as String,
      type: $enumDecode(_$LoginTypeEnumMap, json['type']),
      gender: $enumDecode(_$GenderTypeEnumMap, json['gender']),
    );

Map<String, dynamic> _$$SignUpRequestDtoImplToJson(
        _$SignUpRequestDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth': instance.birth,
      'cellPhoneNo': instance.cellPhoneNo,
      'loginId': instance.loginId,
      'password': instance.password,
      'type': _$LoginTypeEnumMap[instance.type]!,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
    };

const _$LoginTypeEnumMap = {
  LoginType.none: '',
  LoginType.email: 'EMAIL',
  LoginType.kakao: 'KAKAO',
  LoginType.naver: 'NAVER',
  LoginType.apple: 'APPLe',
};

const _$GenderTypeEnumMap = {
  GenderType.man: 'MAN',
  GenderType.woman: 'WOMAN',
};
