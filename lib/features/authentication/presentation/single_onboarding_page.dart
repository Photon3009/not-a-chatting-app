import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/features/app/presentation/builders/app_responsive_layout_builder.dart';

class SingleOnboardingPage extends StatelessWidget {
  const SingleOnboardingPage({
    super.key,
    required this.illustration,
    required this.color,
    required this.title,
    required this.description,
  });

  final Widget illustration;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) => AppResponsiveLayoutBuilder(
        child: Scaffold(
          backgroundColor: color,
          body: Stack(
            children: [
              Positioned(
                top: 120,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kPadding * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: Theme.of(context).textTheme.titleLarge!),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(description,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: AppColors.primaryDark
                                        .withOpacity(0.6))),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: illustration)),
            ],
          ),
        ),
      );
}
