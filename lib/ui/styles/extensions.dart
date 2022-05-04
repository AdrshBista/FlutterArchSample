import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get dark => copyWith(color: AppColors.dark);
  TextStyle get light => copyWith(color: AppColors.light);

  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withSize(double size) => copyWith(fontSize: size);
}
