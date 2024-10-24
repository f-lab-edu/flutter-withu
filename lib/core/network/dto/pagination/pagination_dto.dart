import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';

part 'pagination_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationDto<T> with _$PaginationDto<T> {
  factory PaginationDto({
    required List<T> content,
    required int totalPages,
    required int totalElements,
    required int size,
    required int number,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(
      Map<String, dynamic> json, Function itemFromJson) {
    var content = json['content'].cast<Map<String, dynamic>>();
    return PaginationDto(
      content: List<T>.from(
        content.map((itemJson) => itemFromJson(itemJson)),
      ),
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      number: json['number'] as int,
      size: json['size'] as int,
    );
  }
}
