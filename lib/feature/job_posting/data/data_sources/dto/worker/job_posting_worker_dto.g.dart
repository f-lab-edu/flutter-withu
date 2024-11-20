// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posting_worker_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingWorkerDtoImpl _$$JobPostingWorkerDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingWorkerDtoImpl(
      id: json['id'] as String,
      userInfo:
          SimpleUserDto.fromJson(json['userInfo'] as Map<String, dynamic>),
      workStatus: json['workStatus'] as bool,
      workStartTime: json['workStartTime'] == null
          ? null
          : DateTime.parse(json['workStartTime'] as String),
      workEndTime: json['workEndTime'] == null
          ? null
          : DateTime.parse(json['workEndTime'] as String),
    );

Map<String, dynamic> _$$JobPostingWorkerDtoImplToJson(
        _$JobPostingWorkerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userInfo': instance.userInfo,
      'workStatus': instance.workStatus,
      'workStartTime': instance.workStartTime?.toIso8601String(),
      'workEndTime': instance.workEndTime?.toIso8601String(),
    };
