import 'package:equatable/equatable.dart';

abstract class LoginId extends Equatable {
  final String value;

  const LoginId({required this.value});

  bool get isValid;
}
