// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingModelImpl _$$JobPostingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      category: $enumDecode(_$JobCategoryTypeEnumMap, json['category']),
      status: $enumDecode(_$JobPostingStatusTypeEnumMap, json['status']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      currentMemberCount: (json['currentMemberCount'] as num).toInt(),
      maxMemberCount: (json['maxMemberCount'] as num).toInt(),
    );

Map<String, dynamic> _$$JobPostingModelImplToJson(
        _$JobPostingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': _$JobCategoryTypeEnumMap[instance.category]!,
      'status': _$JobPostingStatusTypeEnumMap[instance.status]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'currentMemberCount': instance.currentMemberCount,
      'maxMemberCount': instance.maxMemberCount,
    };

const _$JobCategoryTypeEnumMap = {
  JobCategoryType.photography: 'photography',
  JobCategoryType.catering: 'catering',
  JobCategoryType.foodStyling: 'foodStyling',
  JobCategoryType.florist: 'florist',
};

const _$JobPostingStatusTypeEnumMap = {
  JobPostingStatusType.temporary: 'temporary',
  JobPostingStatusType.inProgress: 'inProgress',
  JobPostingStatusType.closed: 'closed',
};
