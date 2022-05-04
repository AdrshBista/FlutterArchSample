import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/index.dart';

class IconIndicator extends StatelessWidget {
  final IconData icon;
  final String message;
  final Color? iconColor;

  const IconIndicator({
    Key? key,
    required this.icon,
    required this.message,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleAnimation(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24.0,
            color: iconColor ?? AppColors.onBackground,
          ),
          const SizedBox(width: 8.0),
          Text(
            message,
            style: TextStyles.bodyText2,
          ),
        ],
      ),
    );
  }
}
