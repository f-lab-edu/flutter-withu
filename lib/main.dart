import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init DI
  await initInjections();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'withu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('with'),
        ),
        body: const Text('init project'),
      ),
    );
  }
}
