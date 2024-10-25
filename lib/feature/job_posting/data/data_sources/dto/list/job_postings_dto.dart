import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'job_postings_item_dto.dart';

part 'job_postings_dto.freezed.dart';

part 'job_postings_dto.g.dart';
part 'job_postings_dto.mock.dart';


@freezed
class JobPostingsDto extends PaginationDto<JobPostingsItemDto>
    with _$JobPostingsDto {
  const factory JobPostingsDto({
    required List<JobPostingsItemDto> content,
    required int totalPages,
    required int totalElements,
    required int size,
    required int number,
  }) = _JobPostingsDto;

  factory JobPostingsDto.fromJson(Map<String, Object?> json) =>
      _$JobPostingsDtoFromJson(json);
}
