import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_dto.freezed.dart';

part 'company_dto.g.dart';

part 'company_dto.mock.dart';

/// 회사 상세 모델
@freezed
class CompanyDto with _$CompanyDto {
  const factory CompanyDto({
    required String id, // ID
    required String thumbnailUrl, // 썸네일 이미지
    required String name, // 회사명
  }) = _CompanyDto;

  factory CompanyDto.fromJson(Map<String, Object?> json) =>
      _$CompanyDtoFromJson(json);

  /// Mock 데이터 생성
  factory CompanyDto.mock() => CompanyDtoMock.mock();
}
