import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';
import 'package:flutter_arch_sample/ui/widgets/index.dart';

class BusyIndicator extends StatelessWidget {
  final Color color;

  const BusyIndicator({
    Key? key,
    this.color = AppColors.onBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleAnimation(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ),
    );
  }
}
