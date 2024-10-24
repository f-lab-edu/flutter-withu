import 'package:withu_app/core/core.dart';

import 'job_posting_worker_dto.dart';

/// 공고 목록 모델
typedef JobPostingWorkersDto = PaginationDto<JobPostingWorkerDto>;

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
