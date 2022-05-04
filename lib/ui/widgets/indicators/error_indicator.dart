import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/index.dart';

class ErrorIndicator extends StatelessWidget {
  final String message;

  const ErrorIndicator({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconIndicator(
      message: message,
      iconColor: AppColors.error,
      icon: Icons.error_outline_outlined,
    );
  }
}
