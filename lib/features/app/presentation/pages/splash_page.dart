import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/constants/assets.gen.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/features/app/presentation/builders/app_responsive_layout_builder.dart';
import 'package:its_urgent/features/authentication/data/blocs/auth_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Simulate a loading delay
    Future.delayed(const Duration(seconds: 3), () {
      if (AuthCubit.instance.state.user == null) {
        AutoRouter.of(context).popAndPush(const AppHomeRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveLayoutBuilder(
      child: Scaffold(
        backgroundColor: const Color(0xff8B6854),
        body: Stack(
          children: [
            Assets.images.splashScreenVector.image(),
            Positioned(
              bottom: 30,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Its’ Urgent',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.white)),
                    Text('Not a chating app',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
