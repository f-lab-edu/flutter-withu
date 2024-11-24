import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';

void run({
  required EnvironmentType environment,
}) async {
  Environment.env = environment;

  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  // Init DI
  await initInjections();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ko')],
      fallbackLocale: const Locale('ko'),
      startLocale: const Locale('ko'),
      path: 'assets/translations',
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CustomTheme.theme,
      routerConfig: getItAppRouter.config(),
    );
  }
}
