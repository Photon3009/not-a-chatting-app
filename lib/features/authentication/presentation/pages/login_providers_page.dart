import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/configurations/theme/size_constants.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_scaffold.dart';
import 'package:its_urgent/features/authentication/presentation/auth_button.dart';

@RoutePage()
class LoginProvidersPage extends StatelessWidget {
  const LoginProvidersPage({super.key});

  @override
  Widget build(BuildContext context) => const ItsUrgentScaffold(
        showAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('login content'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding * 4),
                child: _LoginSheet(),
              )
            ],
          ),
        ),
      );
}

class _LoginSheet extends StatelessWidget {
  const _LoginSheet({Key? key}) : super(key: key);

  final buttonSpacingSizedBox = const SizedBox.square(
    dimension: kPadding * 2,
  );

  @override
  Widget build(BuildContext context) => Column(
        children: [
          AuthButton(
            provider: 'phone',
            label: 'Use Phone Number',
            onPressed: () {
              context.router.push(
                const PhoneAuthRouter(
                  children: [
                    PhoneLoginRoute(),
                  ],
                ),
              );
            },
            authButtonType: AuthButtonType.outlined,
          ),
        ],
      );
}
