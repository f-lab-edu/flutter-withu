import 'package:equatable/equatable.dart';
import 'package:withu_app/core/core.dart';

import 'email.dart';

abstract class LoginId extends Equatable {
  final String value;

  const LoginId({required this.value});

  bool get isValid;
}

/// Factory Method - Creator
final loginIdCreators = {
  LoginType.email: EmailLoginIdCreator(),
};

abstract class LoginIdCreator {
  LoginId create(String value);
}

class EmailLoginIdCreator extends LoginIdCreator {
  @override
  LoginId create(String value) => Email(value: value);
}
