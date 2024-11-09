import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

LoginBloc get getItLoginBloc => getIt<LoginBloc>();

void initAccountInjections() {
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
  getIt.registerSingleton<AccountUseCase>(
    AccountUseCaseImpl(accountRepo: getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(accountUseCase: getIt()),
  );
}
