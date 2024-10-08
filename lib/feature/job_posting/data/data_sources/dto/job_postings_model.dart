import 'package:freezed_annotation/freezed_annotation.dart';
import 'job_posting_model.dart';

part 'job_postings_model.freezed.dart';

part 'job_postings_model.g.dart';

@freezed
class JobPostingsModel with _$JobPostingsModel {
  const factory JobPostingsModel({
    required List<JobPostingModel>? contents,
  }) = _JobPostingsModel;

  factory JobPostingsModel.fromJson(Map<String, Object?> json) =>
      _$JobPostingsModelFromJson(json);
}
