import 'package:get_it/get_it.dart';
import 'package:withu_app/feature/job_posting/init_injections.dart';
import 'package:withu_app/feature/splash/splash.dart';

final getIt = GetIt.instance;

Future<void> initInjections() async {
  initSplashInjections();
  initJobPostingInjections();
}
