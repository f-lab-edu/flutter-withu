// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_postings_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingsItemDtoImpl _$$JobPostingsItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingsItemDtoImpl(
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

Map<String, dynamic> _$$JobPostingsItemDtoImplToJson(
        _$JobPostingsItemDtoImpl instance) =>
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
  JobCategoryType.photography: 'PHOTOGRAPHY',
  JobCategoryType.catering: 'CATERING',
  JobCategoryType.foodStyling: 'FOOD_STYLING',
  JobCategoryType.florist: 'FLORIST',
};

const _$JobPostingStatusTypeEnumMap = {
  JobPostingStatusType.inProgress: 'IN_PROGRESS',
  JobPostingStatusType.close: 'CLOSE',
  JobPostingStatusType.delete: 'DELETE',
};
