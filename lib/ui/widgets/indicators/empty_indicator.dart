import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/index.dart';

class EmptyIndicator extends StatelessWidget {
  final String message;

  const EmptyIndicator({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconIndicator(
      message: message,
      iconColor: AppColors.onBackground,
      icon: Icons.hourglass_empty_outlined,
    );
  }
}
