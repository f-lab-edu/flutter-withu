// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseDtoImpl _$$LoginResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseDtoImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      userId: json['userId'] as String?,
      loginId: json['loginId'] as String?,
      name: json['name'] as String?,
      sessionId: json['sessionId'] as String?,
      accountId: (json['accountId'] as num?)?.toInt(),
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']),
    );

Map<String, dynamic> _$$LoginResponseDtoImplToJson(
        _$LoginResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'userId': instance.userId,
      'loginId': instance.loginId,
      'name': instance.name,
      'sessionId': instance.sessionId,
      'accountId': instance.accountId,
      'accountType': _$AccountTypeEnumMap[instance.accountType],
    };

const _$AccountTypeEnumMap = {
  AccountType.none: '',
  AccountType.company: 'COMPANY',
  AccountType.user: 'USER',
};
