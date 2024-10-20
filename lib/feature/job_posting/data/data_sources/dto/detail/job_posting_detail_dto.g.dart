// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posting_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobPostingDetailDtoImpl _$$JobPostingDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JobPostingDetailDtoImpl(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      specialtyField: json['specialtyField'] as String,
      contractType: json['contractType'] as String,
      contractStartDate: DateTime.parse(json['contractStartDate'] as String),
      contractEndDate: DateTime.parse(json['contractEndDate'] as String),
      isTimeUndecided: json['isTimeUndecided'] as bool,
      payType: json['payType'] as String,
      payAmount: (json['payAmount'] as num).toInt(),
      workAddress: json['workAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      participants: (json['participants'] as num).toInt(),
      hasTravelTime: json['hasTravelTime'] as bool,
      hasBreakTime: json['hasBreakTime'] as bool,
      isMealProvided: json['isMealProvided'] as bool,
      isUrgent: json['isUrgent'] as bool,
      preferredQualifications: json['preferredQualifications'] as String?,
      workStartTime: json['workStartTime'] == null
          ? null
          : DateTime.parse(json['workStartTime'] as String),
      workEndTime: json['workEndTime'] == null
          ? null
          : DateTime.parse(json['workEndTime'] as String),
      isTravelTimePaid: json['isTravelTimePaid'] as bool?,
      isBreakTimePaid: json['isBreakTimePaid'] as bool?,
    );

Map<String, dynamic> _$$JobPostingDetailDtoImplToJson(
        _$JobPostingDetailDtoImpl instance) =>
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
      'payType': instance.payType,
      'payAmount': instance.payAmount,
      'workAddress': instance.workAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'participants': instance.participants,
      'hasTravelTime': instance.hasTravelTime,
      'hasBreakTime': instance.hasBreakTime,
      'isMealProvided': instance.isMealProvided,
      'isUrgent': instance.isUrgent,
      'preferredQualifications': instance.preferredQualifications,
      'workStartTime': instance.workStartTime?.toIso8601String(),
      'workEndTime': instance.workEndTime?.toIso8601String(),
      'isTravelTimePaid': instance.isTravelTimePaid,
      'isBreakTimePaid': instance.isBreakTimePaid,
    };
