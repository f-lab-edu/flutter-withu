part of 'simple_user_dto.dart';

extension SimpleUserDtoExt on SimpleUserDto {
  static SimpleUserDto mock({String? id}) {
    return SimpleUserDto(
      id: id ?? '1',
      name: '김영건',
      age: 32,
      profile: 'https://picsum.photos/200',
    );
  }
}
