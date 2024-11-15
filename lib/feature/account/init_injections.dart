import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

import 'domain/usecase/email_duplicate_check/email_duplicate_check_use_case.dart';

void initAccountInjections() {
  initAccountDataInjections();
  initAccountDomainInjections();
  initAccountPresentationInjections();
}

void initAccountDataInjections() {
  getIt.registerSingleton<AccountApi>(
    Environment.isProd
        ? AccountApiImpl(network: getIt())
        : AccountMockApi(network: getIt()),
  );
  getIt.registerSingleton<AccountStorage>(
    AccountStorageImpl(),
  );
  getIt.registerSingleton<AccountRepository>(
    AccountRepositoryImpl(
      accountApi: getIt(),
      accountStorage: getIt(),
    ),
  );
}

void initAccountDomainInjections() {
  getIt.registerSingleton<AccountUseCase>(
    AccountUseCaseImpl(accountRepo: getIt()),
  );
  getIt.registerSingleton<EmailDuplicateCheckUseCase>(
    EmailDuplicateCheckUseCaseImpl(accountRepo: getIt()),
  );
}

void initAccountPresentationInjections() {
  getIt.registerFactory<EmailDuplicateCheckBloc>(
    () => EmailDuplicateCheckBloc(useCase: getIt()),
  );
  getIt.registerFactory<PhoneAuthBloc>(
    () => PhoneAuthBloc(accountUseCase: getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(accountUseCase: getIt()),
  );
}
