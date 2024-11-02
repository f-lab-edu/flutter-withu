import 'package:get_it/get_it.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/job_posting/init_injections.dart';
import 'package:withu_app/feature/splash/splash.dart';

final getIt = GetIt.instance;

void initCommonInjections() {
  getIt.registerSingleton<DioNetwork>(DioNetwork());
}

Future<void> initInjections() async {
  initCommonInjections();
  initAccountInjections();
  initSplashInjections();
  initJobPostingInjections();
}
