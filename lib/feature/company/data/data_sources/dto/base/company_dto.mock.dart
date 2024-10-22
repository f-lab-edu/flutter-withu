part of 'company_dto.dart';

extension CompanyDtoMock on CompanyDto {
  /// Mock 데이터 생성.
  static CompanyDto mock() {
    return const CompanyDto(
      id: '1',
      name: 'ABC',
      thumbnailUrl: 'https://picsum.photos/200',
    );
  }
}
