import 'package:get_it/get_it.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/job_posting/init_injections.dart';
import 'package:withu_app/feature/splash/splash.dart';

final getIt = GetIt.instance;

AppRouter get getItAppRouter => getIt<AppRouter>();

void initCommonInjections() {
  getIt.registerSingleton<DioNetwork>(DioNetwork());
}

void initRouterInjections() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}

Future<void> initInjections() async {
  initRouterInjections();
  initCommonInjections();
  initAccountInjections();
  initSplashInjections();
  initJobPostingInjections();
}
