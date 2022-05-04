import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

extension SnackBarExtensions on BuildContext {
  void showSnackBar(String message, {Color backgroundColor = AppColors.dark}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          width: 400.0,
          backgroundColor: backgroundColor,
          content: Text(
            message,
            style: TextStyles.button,
            textAlign: TextAlign.center,
          ),
        ),
      );
  }
}
