import 'package:withu_app/feature/account/account.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountApi accountApi;

  AccountRepositoryImpl({required this.accountApi});
}
