import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_auto_leading_button.dart';

class ItsUrgentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ItsUrgentAppBar({
    super.key,
    this.appBarTitleText,
    this.appBarTitleWidget,
    this.actions,
    required this.centerTitle,
    this.elevation,
  });

  final String? appBarTitleText;
  final Widget? appBarTitleWidget;

  final List<Widget>? actions;
  final bool centerTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kPadding),
        child: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: kPadding * 6,
          elevation: elevation,
          leading: const ItsUrgentAutoLeadingButton(),
          centerTitle: centerTitle,
          title: appBarTitleText != null
              ? Text(
                  appBarTitleText!,
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              : appBarTitleWidget,
          actions: actions,
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kPadding * 8);
}
