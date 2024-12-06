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
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: FindAccountRoute.page,
          path: '/find-account',
        ),
        AutoRoute(
          page: JobPostingsRoute.page,
          path: '/job-postings',
        ),
        AutoRoute(
          page: JobPostingFormRoute.page,
          path: '/job-posting-form',
        ),
        AutoRoute(
          page: JobPostingDetailRoute.page,
          path: '/job-posting-detail',
        ),
        AutoRoute(
          page: JobPostingWorkersRoute.page,
          path: '/job-posting-workers',
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: '/sign-up',
        ),
      ];
}
