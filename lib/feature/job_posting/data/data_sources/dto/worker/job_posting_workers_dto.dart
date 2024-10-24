import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'job_posting_worker_dto.dart';

part 'job_posting_workers_dto.freezed.dart';

part 'job_posting_workers_dto.g.dart';

/// 공고 목록 모델
@freezed
class JobPostingWorkersDto with _$JobPostingWorkersDto {
  @Implements<PaginationDto<JobPostingWorkerDto>>()
  factory JobPostingWorkersDto({
    required String title,
    required int participants,
    required DateTime workStartDate,
    required DateTime workEndDate,
    required List<JobPostingWorkerDto> content,
    required int totalPages,
    required int totalElements,
    required int size,
    required int number,
  }) = _JobPostingWorkersDto;

  factory JobPostingWorkersDto.fromJson(Map<String, dynamic> json) =>
      _$JobPostingWorkersDtoFromJson(json);
}

extension JobPostingWorkersDtoExt on JobPostingWorkersDto {
  static List<JobPostingWorkerDto> mock({
    required int page,
  }) {
    return List.generate(
      10,
      (int index) => JobPostingWorkerDtoExt.mock(
        id: '${(page * 10) + index}',
      ),
    );
  }
}
