import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/utils/custom_transitions_route.dart';

final userSurveyRoutes = [
  scaleTransitionCustomRoute(
    initial: true,
    page: UserSurveyProfileRoute.page,
    meta: const {
      'title': 'Set up Your Profile',
    },
  ),
  scaleTransitionCustomRoute(
    page: UserSurveyAddChallengeRoute.page,
    meta: const {
      'title': 'Add challenge',
    },
  ),
];
