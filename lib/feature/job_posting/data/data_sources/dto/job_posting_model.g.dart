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
      category: $enumDecode(_$JobCategoryEnumMap, json['category']),
      status: $enumDecode(_$JobPostingStatusTypeEnumMap, json['status']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      current: (json['current'] as num).toInt(),
      max: (json['max'] as num).toInt(),
    );

Map<String, dynamic> _$$JobPostingModelImplToJson(
        _$JobPostingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': _$JobCategoryEnumMap[instance.category]!,
      'status': _$JobPostingStatusTypeEnumMap[instance.status]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'current': instance.current,
      'max': instance.max,
    };

const _$JobCategoryEnumMap = {
  JobCategory.photography: 'photography',
  JobCategory.catering: 'catering',
  JobCategory.foodStyling: 'foodStyling',
  JobCategory.florist: 'florist',
};

const _$JobPostingStatusTypeEnumMap = {
  JobPostingStatusType.temporary: 'temporary',
  JobPostingStatusType.inProgress: 'inProgress',
  JobPostingStatusType.closed: 'closed',
};
