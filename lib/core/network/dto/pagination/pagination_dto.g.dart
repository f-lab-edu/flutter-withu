// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDtoImpl<T> _$$PaginationDtoImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationDtoImpl<T>(
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationDtoImplToJson<T>(
  _$PaginationDtoImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'content': instance.content.map(toJsonT).toList(),
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'size': instance.size,
      'number': instance.number,
    };
