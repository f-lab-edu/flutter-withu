import 'package:withu_app/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_postings_item_model.freezed.dart';

part 'job_postings_item_model.g.dart';

@freezed
class JobPostingsItemModel with _$JobPostingsItemModel {
  const factory JobPostingsItemModel({
    required String id, // Id
    required String title, // 공고명
    required JobCategoryType category, // 직업 카테고리
    required JobPostingStatusType status, // 상태값
    required DateTime startDate, // 근무 시작 날짜
    required DateTime? endDate, // 근무 종료 날짜
    required int currentMemberCount, // 현재 모집 인원
    required int maxMemberCount, // 최대 모집 인원
  }) = _JobPostingsItemModel;

  factory JobPostingsItemModel.fromJson(Map<String, Object?> json) =>
      _$JobPostingsItemModelFromJson(json);
}
