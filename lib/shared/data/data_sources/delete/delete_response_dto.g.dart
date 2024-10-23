// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteResponseDtoImpl _$$DeleteResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteResponseDtoImpl(
      id: json['id'] as String,
      deleted: json['deleted'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteResponseDtoImplToJson(
        _$DeleteResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deleted': instance.deleted,
      'message': instance.message,
    };
