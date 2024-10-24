// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../workers/job_posting_workers_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingWorkersDtoImpl _$$JobPostingWorkersDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingWorkersDtoImpl(
      title: json['title'] as String,
      participants: (json['participants'] as num).toInt(),
      workStartDate: DateTime.parse(json['workStartDate'] as String),
      workEndDate: DateTime.parse(json['workEndDate'] as String),
      content: (json['content'] as List<dynamic>)
          .map((e) => JobPostingWorkerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$JobPostingWorkersDtoImplToJson(
        _$JobPostingWorkersDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'participants': instance.participants,
      'workStartDate': instance.workStartDate.toIso8601String(),
      'workEndDate': instance.workEndDate.toIso8601String(),
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'size': instance.size,
      'number': instance.number,
    };
