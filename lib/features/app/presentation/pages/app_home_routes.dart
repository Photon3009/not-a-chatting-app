import 'package:auto_route/auto_route.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';

final appHomeRoutes = [
  AutoRoute(
    initial: true,
    path: 'home',
    page: AppHomeRoute.page,
  ),
];
