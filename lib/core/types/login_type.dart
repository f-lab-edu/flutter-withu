import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'serverKey')
enum LoginType {
  email(serverKey: 'EMAIL'),
  kakao(serverKey: 'KAKAO'),
  naver(serverKey: 'NAVER'),
  apple(serverKey: 'APPLe');

  final String serverKey;

  const LoginType({
    required this.serverKey,
  });
}
