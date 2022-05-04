import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/core/constants/index.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

class TextStyles {
  static const _base = TextStyle(
    color: AppColors.light,
    fontFamily: AppConfig.fontFamily,
  );

  static final headline1 = _base.copyWith(fontSize: 28.0);
  static final headline2 = _base.copyWith(fontSize: 22.0);
  static final headline3 = _base.copyWith(fontSize: 18.0);
  static final headline4 = _base.copyWith(fontSize: 16.0);
  static final headline5 = _base.copyWith(fontSize: 14.0);
  static final headline6 = _base.copyWith(fontSize: 12.0);
  static final subtitle1 = _base.copyWith(fontSize: 14.0);
  static final subtitle2 = _base.copyWith(fontSize: 12.0);
  static final bodyText1 = _base.copyWith(fontSize: 14.0);
  static final bodyText2 = _base.copyWith(fontSize: 12.0);
  static final button = _base.copyWith(fontSize: 12.0);
  static final caption = _base.copyWith(fontSize: 11.0);
  static final overline = _base.copyWith(fontSize: 10.0);
}
