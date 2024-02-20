import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_scaffold.dart';

@RoutePage()
class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ItsUrgentScaffold(
      appBarTitleText: 'Unknown Route',
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Whoops!',
              style: textTheme.titleMedium,
            ),
            const Text(
                'Looks like we could not find what you are looking for!'),
            TextButton(
              onPressed: () {
                final router = context.router;

                if (router.canNavigateBack) {
                  router.back();
                } else {
                  // router.replace(const AppHomeRoute());
                }
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
