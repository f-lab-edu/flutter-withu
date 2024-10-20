import 'package:freezed_annotation/freezed_annotation.dart';
import 'job_postings_item_model.dart';

part 'job_postings_model.freezed.dart';

part 'job_postings_model.g.dart';

@freezed
class JobPostingsModel with _$JobPostingsModel {
  const factory JobPostingsModel({
    required List<JobPostingsItemModel>? contents,
  }) = _JobPostingsModel;

  factory JobPostingsModel.fromJson(Map<String, Object?> json) =>
      _$JobPostingsModelFromJson(json);
}
