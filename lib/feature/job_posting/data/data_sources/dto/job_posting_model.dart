import 'package:withu_app/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_posting_model.freezed.dart';

part 'job_posting_model.g.dart';

@freezed
class JobPostingModel with _$JobPostingModel {
  const factory JobPostingModel({
    required String id, // Id
    required String title, // 공고명
    required JobCategory category, // 직업 카테고리
    required JobPostingStatusType status, // 상태값
    required DateTime startDate, // 근무 시작 날짜
    required DateTime endDate, // 근무 종료 날짜
    required int current,
    required int max,
  }) = _JobPostingModel;

  factory JobPostingModel.fromJson(Map<String, Object?> json) =>
      _$JobPostingModelFromJson(json);
}
