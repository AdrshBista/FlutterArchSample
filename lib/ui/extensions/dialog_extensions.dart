import 'package:flutter/material.dart';

extension DialogExtensions on BuildContext {
  void openDialog({
    required WidgetBuilder builder,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    bool barrierDismissible = false,
  }) {
    showDialog(
      context: this,
      builder: builder,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
    );
  }
}
