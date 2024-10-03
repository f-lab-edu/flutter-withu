// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingImpl _$$JobPostingImplFromJson(Map<String, dynamic> json) =>
    _$JobPostingImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      jobCategory: $enumDecode(_$JobCategoryEnumMap, json['jobCategory']),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$JobPostingImplToJson(_$JobPostingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'jobCategory': _$JobCategoryEnumMap[instance.jobCategory]!,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };

const _$JobCategoryEnumMap = {
  JobCategory.photography: 'photography',
  JobCategory.catering: 'catering',
  JobCategory.foodStyling: 'foodStyling',
  JobCategory.florist: 'florist',
};
