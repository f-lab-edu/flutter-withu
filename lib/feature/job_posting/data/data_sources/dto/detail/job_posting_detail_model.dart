
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'job_posting_detail_model.freezed.dart';

part 'job_posting_detail_model.g.dart';

/// 공고 상세 모델
@freezed
class JobPostingDetailModel with _$JobPostingDetailModel {
  const factory JobPostingDetailModel({
    required String id, // 공고 ID
    required String companyId, // 회사 ID
    required String title, // 공고명
    required String content, // 근로 내용
    required String specialtyField, // 카테고리
    required String contractType, // 계약 타입: 단기, 장기
    required DateTime contractStartDate, // 근로 시작 날
    required DateTime contractEndDate, // 근로 종료 날짜
    required bool isTimeUndecided, // 시간 미정 여부
    required PayType payType, // 급여 타입: 시급, 일급
    required int payAmount, // 금액
    required String workAddress, // 근무지 주소
    required double latitude, // 근무지 위도
    required double longitude, // 근무지 경도
    required int participants, // 모집인원
    required bool hasTravelTime, // 이동시간 유무
    required bool isTravelTimePaid, // 이동시간 급여/비급여
    required bool hasBreakTime, // 휴게시간 여부
    required bool isBreakTimePaid, // 휴게시간 급여/비급여
    required bool isMealProvided, // 식사유무
    required bool isUrgent, // 급구 여부
    String? preferredQualifications, // 우대사항
    DateTime? workStartTime, // 근무 시작 시간
    DateTime? workEndTime, // 근무 종료 시간
  }) = _JobPostingDetailModel;

  factory JobPostingDetailModel.fromJson(Map<String, Object?> json) =>
      _$JobPostingDetailModelFromJson(json);
}
