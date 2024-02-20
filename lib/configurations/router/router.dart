import 'package:auto_route/auto_route.dart';
import 'package:its_urgent/configurations/router/auth_guard.dart';
import 'package:its_urgent/features/app/presentation/pages/app_home_routes.dart';
import 'package:its_urgent/features/authentication/presentation/pages/login_routes.dart';
import 'package:its_urgent/features/user_survey/presentation/pages/user_survey_routes.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: UnknownRoute.page),
    AutoRoute(
      page: OnboardingRoute.page,
    ),
    AutoRoute(
      page: LoginRouter.page,
      children: loginRoutes,
    ),
    AutoRoute(
      page: UserSurveyRouter.page,
      guards: [
        AuthGuard(),
      ],
      children: userSurveyRoutes,
    ),
    AutoRoute(
      page: AppHomeRoute.page,
      guards: [
        AuthGuard(),
      ],
      children: appHomeRoutes,
    ),
  ];
}

// Route<T> modalSheetBuilder<T>(
//         BuildContext context, Widget child, AutoRoutePage<T> page) =>
//     ModalBottomSheetRoute(
//       settings: page,
//       isScrollControlled: true,
//       constraints: BoxConstraints(
//         maxHeight: (MediaQuery.of(context).size.height / 10) * 7,
//       ),
//       builder: (context) => child,
//     );

// Route<T> dialogRouteBuilder<T>(
//         BuildContext context, Widget child, AutoRoutePage<T> page) =>
//     DialogRoute(
//       settings: page,
//       barrierDismissible: true,
//       builder: (context) => child,
//       context: context,
//       useSafeArea: true,
//       barrierColor: AppColors.surfaceVariantDark.withOpacity(.1),
//     );
