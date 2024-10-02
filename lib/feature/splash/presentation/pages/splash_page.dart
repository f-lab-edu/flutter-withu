import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:withu_app/core/router/router.gr.dart';
import 'package:withu_app/feature/splash/presentation/bloc/splash_bloc.dart';

/// Splash 화면.
@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) {
        return GetIt.I<SplashBloc>()..add(InitializeApp());
      },
      child: _SplashPage(),
    );
  }
}

class _SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is NavigateToNextScreenState) {
            context.router.push(const JobPostingsRoute());
          }
        },
        child: const Center(
          child: Text(
            '위드유',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
