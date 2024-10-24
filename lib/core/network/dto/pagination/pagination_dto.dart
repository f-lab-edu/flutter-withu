/// 페이지네이션 추상 모델
abstract class PaginationDto<T> {
  final List<T> content;
  final int totalPages;
  final int totalElements;
  final int size;
  final int number;

  PaginationDto({
    required this.content,
    required this.totalPages,
    required this.totalElements,
    required this.size,
    required this.number,
  });
}
