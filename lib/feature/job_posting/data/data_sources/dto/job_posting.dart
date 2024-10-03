import 'package:withu_app/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_posting.freezed.dart';

part 'job_posting.g.dart';

@freezed
class JobPosting with _$JobPosting {
  const factory JobPosting({
    required String id, // Id
    required String title, // 공고명
    required JobCategory jobCategory, // 직업 카테고리
    required DateTime startDate, // 근무 시작 날짜
    required DateTime endDate, // 근무 종료 날짜
  }) = _JobPosting;

  factory JobPosting.fromJson(Map<String, Object?> json) =>
      _$JobPostingFromJson(json);
}
