import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'email_duplicate_check_usecase.impl.dart';

abstract class EmailDuplicateCheckUseCase {
  final AccountRepository accountRepo;

  EmailDuplicateCheckUseCase({required this.accountRepo});

  Future<String> exec({required String email});
}
