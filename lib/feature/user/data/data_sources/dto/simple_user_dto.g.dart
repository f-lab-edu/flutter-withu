// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleUserDtoImpl _$$SimpleUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$SimpleUserDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      profile: json['profile'] as String,
    );

Map<String, dynamic> _$$SimpleUserDtoImplToJson(_$SimpleUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'profile': instance.profile,
    };
