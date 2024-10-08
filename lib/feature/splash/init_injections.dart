import 'package:withu_app/core/utils/injections.dart';
import 'package:withu_app/feature/splash/presentation/bloc/splash_bloc.dart';

initSplashInjections() {
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
}
