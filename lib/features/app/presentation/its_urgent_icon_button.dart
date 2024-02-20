import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';

class ItsUrgentIconButton extends StatelessWidget {
  const ItsUrgentIconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(
              kButtonRadius,
            ),
          ),
          width: kPadding * 6,
          height: kPadding * 6,
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      );
}
