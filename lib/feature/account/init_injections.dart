import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

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
  getIt.registerSingleton<LoginUseCase>(
    LoginUseCaseImpl(accountRepo: getIt()),
  );
  getIt.registerSingleton<PhoneAuthUseCase>(
    PhoneAuthUseCaseImpl(accountRepo: getIt()),
  );
  getIt.registerSingleton<EmailDuplicateCheckUseCase>(
    EmailDuplicateCheckUseCaseImpl(accountRepo: getIt()),
  );
}

void initAccountPresentationInjections() {

  getIt.registerFactory<PhoneAuthBloc>(
    () => PhoneAuthBloc(phoneAuthUseCase: getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(loginUseCase: getIt()),
  );
  getIt.registerFactory<EmailDuplicateCheckBloc>(
        () => EmailDuplicateCheckBloc(useCase: getIt()),
  );
}
