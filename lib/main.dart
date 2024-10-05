import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init DI
  await initInjections();

  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: CustomTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
