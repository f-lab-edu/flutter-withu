import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  // Init DI
  await initInjections();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('ko'),
      startLocale: const Locale('ko'),
      path: 'assets/translations',
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CustomTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
