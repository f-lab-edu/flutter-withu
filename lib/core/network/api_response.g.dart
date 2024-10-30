// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailResponseImpl _$$FailResponseImplFromJson(Map<String, dynamic> json) =>
    _$FailResponseImpl(
      status: (json['status'] as num).toInt(),
      error: json['error'] as String? ?? '',
      message: json['message'] as String? ?? '',
      devMessage: json['devMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$FailResponseImplToJson(_$FailResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'devMessage': instance.devMessage,
    };
