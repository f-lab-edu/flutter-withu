import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

void initAccountInjections() {
  getIt.registerSingleton<AccountApi>(
    Environment.isProd ? AccountApiImpl() : AccountMockApi(),
  );
  getIt.registerSingleton<AccountRepository>(
    AccountRepositoryImpl(accountApi: getIt()),
  );
  getIt.registerSingleton<AccountUseCase>(
    AccountUseCaseImpl(accountRepo: getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(accountUseCase: getIt()),
  );
}
