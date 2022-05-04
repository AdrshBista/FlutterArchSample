import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/animations/scale_animation.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final bool disabled;
  final Color disabledColor;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    required this.label,
    this.textStyle,
    this.onPressed,
    this.disabled = false,
    this.disabledColor = AppColors.disabled,
    this.backgroundColor = AppColors.success,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleAnimation(
      child: IgnorePointer(
        ignoring: disabled,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            minimumSize: const Size(64.0, 36.0),
            padding: const EdgeInsets.all(16.0),
            primary: disabled ? disabledColor : backgroundColor,
          ),
          child: Text(
            label,
            style: (textStyle ?? TextStyles.button.light).semiBold,
          ),
        ),
      ),
    );
  }
}
