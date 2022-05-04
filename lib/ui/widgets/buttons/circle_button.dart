import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/index.dart';

class CircleButton extends StatelessWidget {
  final Icon icon;
  final double radius;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  const CircleButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.radius = 24.0,
    this.backgroundColor = AppColors.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleAnimation(
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: icon.color?.withOpacity(0.3),
        onTap: onPressed,
        child: CircleAvatar(
          radius: radius,
          child: icon,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
