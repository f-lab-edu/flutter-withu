import 'package:auto_route/auto_route.dart';
import 'package:withu_app/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: JobPostingsRoute.page,
          path: '/job-postings',
        ),
      ];
}
