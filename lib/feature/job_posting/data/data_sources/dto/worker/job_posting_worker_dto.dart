import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/feature/user/user.dart';

part 'job_posting_worker_dto.freezed.dart';

part 'job_posting_worker_dto.g.dart';

part 'job_posting_worker_dto.mock.dart';

@freezed
class JobPostingWorkerDto with _$JobPostingWorkerDto {
  factory JobPostingWorkerDto({
    required String id,
    required SimpleUserDto userInfo,
    required bool workStatus, // 출근 여부
    DateTime? workStartTime, // 근무 시작 시간
    DateTime? workEndTime, // 근무 종료 시간
  }) = _JobPostingWorkerDto;

  factory JobPostingWorkerDto.fromJson(Map<String, Object?> json) =>
      _$JobPostingWorkerDtoFromJson(json);
}
