// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_postings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingsDtoImpl _$$JobPostingsDtoImplFromJson(Map<String, dynamic> json) =>
    _$JobPostingsDtoImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => JobPostingsItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$JobPostingsDtoImplToJson(
        _$JobPostingsDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'size': instance.size,
      'number': instance.number,
    };
