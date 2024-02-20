import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_scaffold.dart';

@RoutePage(
  name: 'PhoneAuthRouter',
)
class PhoneAuthRouterPage extends StatelessWidget {
  const PhoneAuthRouterPage({super.key});

  @override
  Widget build(BuildContext context) => const ItsUrgentScaffold(
        appBarTitleText: 'Register',
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kPadding * 2),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ItsUrgentAutoLeadingButton(),
                    Spacer(),
                  ],
                ),
                Expanded(
                  child: AutoRouter(),
                ),
              ],
            ),
          ),
        ),
      );
}
