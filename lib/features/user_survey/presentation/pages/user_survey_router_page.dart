import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(
  name: 'UserSurveyRouter',
)
class UserSurveyRouterPage extends StatelessWidget implements AutoRouteWrapper {
  const UserSurveyRouterPage({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) {
    // final authCubit = context.read<AuthCubit>();
    // final user = authCubit.state.user;

    return this;
    // BlocProvider<UserSurveyCubit>(
    //   create: (_) => UserSurveyCubit()
    //     ..initialize(
    //       skills: user?.skills ?? [],
    //       hackathonThemes: user?.hackathonThemeInterests ?? [],
    //       hackathonType: user?.hackathonModeInterests,
    //     ),
    //   child: this,
    // );
  }
}
