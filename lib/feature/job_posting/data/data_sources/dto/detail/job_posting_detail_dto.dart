import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/company/data/data_sources/dto/base/company_dto.dart';

part 'job_posting_detail_dto.freezed.dart';

part 'job_posting_detail_dto.g.dart';

part 'job_posting_detail_dto.mock.dart';

/// 공고 상세 모델
@freezed
class JobPostingDetailDto with _$JobPostingDetailDto {
  const factory JobPostingDetailDto({
    required String id, // 공고 ID
    required CompanyDto company, // 회사 정보
    required int views, // 조회수
    required String title, // 공고명
    required String content, // 근로 내용
    required JobCategoryType specialtyField, // 카테고리
    required ContractType contractType, // 계약 타입: 단기, 장기
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
    required bool hasBreakTime, // 휴게시간 여부
    required bool isMealProvided, // 식사유무
    required bool isUrgent, // 급구 여부
    String? preferredQualifications, // 우대사항
    DateTime? workStartTime, // 근무 시작 시간
    DateTime? workEndTime, // 근무 종료 시간
    bool? isTravelTimePaid, // 이동시간 급여/비급여
    bool? isBreakTimePaid, // 휴게시간 급여/비급여
  }) = _JobPostingDetailDto;

  factory JobPostingDetailDto.fromJson(Map<String, Object?> json) =>
      _$JobPostingDetailDtoFromJson(json);

  /// Mock 데이터 생성
  factory JobPostingDetailDto.mock({required String id}) =>
      JobPostingDetailDtoMock.mock(id: id);
}
