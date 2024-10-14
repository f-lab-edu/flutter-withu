// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posting_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingDetailModelImpl _$$JobPostingDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingDetailModelImpl(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      specialtyField: json['specialtyField'] as String,
      contractType: json['contractType'] as String,
      contractStartDate: DateTime.parse(json['contractStartDate'] as String),
      contractEndDate: DateTime.parse(json['contractEndDate'] as String),
      isTimeUndecided: json['isTimeUndecided'] as bool,
      payType: $enumDecode(_$PayTypeEnumMap, json['payType']),
      payAmount: (json['payAmount'] as num).toInt(),
      workAddress: json['workAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      participants: (json['participants'] as num).toInt(),
      hasTravelTime: json['hasTravelTime'] as bool,
      isTravelTimePaid: json['isTravelTimePaid'] as bool,
      hasBreakTime: json['hasBreakTime'] as bool,
      isBreakTimePaid: json['isBreakTimePaid'] as bool,
      isMealProvided: json['isMealProvided'] as bool,
      isUrgent: json['isUrgent'] as bool,
      preferredQualifications: json['preferredQualifications'] as String?,
      workStartTime: json['workStartTime'] == null
          ? null
          : DateTime.parse(json['workStartTime'] as String),
      workEndTime: json['workEndTime'] == null
          ? null
          : DateTime.parse(json['workEndTime'] as String),
    );

Map<String, dynamic> _$$JobPostingDetailModelImplToJson(
        _$JobPostingDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'title': instance.title,
      'content': instance.content,
      'specialtyField': instance.specialtyField,
      'contractType': instance.contractType,
      'contractStartDate': instance.contractStartDate.toIso8601String(),
      'contractEndDate': instance.contractEndDate.toIso8601String(),
      'isTimeUndecided': instance.isTimeUndecided,
      'payType': _$PayTypeEnumMap[instance.payType]!,
      'payAmount': instance.payAmount,
      'workAddress': instance.workAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'participants': instance.participants,
      'hasTravelTime': instance.hasTravelTime,
      'isTravelTimePaid': instance.isTravelTimePaid,
      'hasBreakTime': instance.hasBreakTime,
      'isBreakTimePaid': instance.isBreakTimePaid,
      'isMealProvided': instance.isMealProvided,
      'isUrgent': instance.isUrgent,
      'preferredQualifications': instance.preferredQualifications,
      'workStartTime': instance.workStartTime?.toIso8601String(),
      'workEndTime': instance.workEndTime?.toIso8601String(),
    };

const _$PayTypeEnumMap = {
  PayType.hour: 'hour',
  PayType.day: 'day',
};
