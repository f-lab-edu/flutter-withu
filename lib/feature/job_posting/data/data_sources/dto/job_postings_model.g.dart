// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_postings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingsModelImpl _$$JobPostingsModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$JobPostingsModelImpl(
      contents: (json['contents'] as List<dynamic>?)
          ?.map((e) => JobPostingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$JobPostingsModelImplToJson(
  _$JobPostingsModelImpl instance,
) =>
    <String, dynamic>{
      'contents': instance.contents,
    };
