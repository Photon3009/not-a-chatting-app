import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_icon_button.dart';

class ItsUrgentAutoLeadingButton extends StatelessWidget {
  const ItsUrgentAutoLeadingButton({super.key, this.onPressed, this.icon});

  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) => AutoLeadingButton(
        builder: (context, type, function) {
          if (type == LeadingType.noLeading) return const Offstage();
          return ItsUrgentIconButton(
            onPressed: onPressed ?? function,
            icon: icon ??
                (type == LeadingType.back
                    ? Icons.chevron_left
                    : type == LeadingType.close
                        ? Icons.close
                        : Icons.menu),
          );
        },
      );
}
