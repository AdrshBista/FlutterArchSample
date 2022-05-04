import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/core/constants/index.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
        fontFamily: AppConfig.fontFamily,
        brightness: Brightness.dark,
        backgroundColor: AppColors.background,
        scaffoldBackgroundColor: AppColors.background,
        cardColor: AppColors.onBackground,
        dividerColor: AppColors.disabled,
        visualDensity: VisualDensity.compact,
        textTheme: _textTheme,
        colorScheme: _colorScheme,
        iconTheme: _iconTheme,
        primaryIconTheme: _iconTheme,
        cardTheme: _cardTheme,
        dividerTheme: _dividerTheme,
        buttonTheme: _buttonTheme,
        appBarTheme: _appBarTheme,
        tabBarTheme: _tabBarTheme,
        dialogTheme: _dialogTheme,
        snackBarTheme: _snackBarTheme,
        popupMenuTheme: _popupMenuTheme,
        bottomSheetTheme: _bottomSheetTheme,
        bottomAppBarTheme: _bottomAppBarTheme,
        inputDecorationTheme: _inputDecorationTheme,
        floatingActionButtonTheme: _floatingActionButtonTheme,
      );

  static ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.background,
        onPrimary: AppColors.onBackground,
        secondary: AppColors.light,
        onSecondary: AppColors.dark,
        error: AppColors.error,
        onError: AppColors.light,
        surface: AppColors.background,
        onSurface: AppColors.onBackground,
        background: AppColors.background,
        onBackground: AppColors.onBackground,
      );

  static TextTheme get _textTheme => TextTheme(
        headline1: TextStyles.headline1,
        headline2: TextStyles.headline2,
        headline3: TextStyles.headline3,
        headline4: TextStyles.headline4,
        headline5: TextStyles.headline5,
        headline6: TextStyles.headline6,
        subtitle1: TextStyles.subtitle1,
        subtitle2: TextStyles.subtitle2,
        bodyText1: TextStyles.bodyText1,
        bodyText2: TextStyles.bodyText2,
        caption: TextStyles.caption,
        button: TextStyles.button,
        overline: TextStyles.overline,
      );

  static IconThemeData get _iconTheme => const IconThemeData(
        size: 20.0,
        opacity: 1.0,
        color: AppColors.onBackground,
      );

  static RoundedRectangleBorder get _circularBorderRadius =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      );

  static InputBorder get _inputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: const BorderSide(width: 0.5, color: AppColors.disabled),
      );

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        filled: false,
        isDense: true,
        errorMaxLines: 2,
        helperMaxLines: 2,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.zero,
        labelStyle: TextStyles.button,
        hintStyle: TextStyles.button,
        helperStyle: TextStyles.button,
        prefixStyle: TextStyles.button,
        suffixStyle: TextStyles.button,
        counterStyle: TextStyles.button,
        errorStyle: TextStyles.button,
        border: _inputBorder,
        errorBorder: _inputBorder,
        enabledBorder: _inputBorder,
        focusedBorder: _inputBorder,
        disabledBorder: _inputBorder,
        focusedErrorBorder: _inputBorder,
      );

  static FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      const FloatingActionButtonThemeData(
        elevation: 4.0,
        hoverElevation: 4.0,
        focusElevation: 4.0,
        disabledElevation: 0.0,
        highlightElevation: 4.0,
        foregroundColor: AppColors.background,
        backgroundColor: AppColors.onBackground,
        splashColor: AppColors.success,
      );

  static ButtonThemeData get _buttonTheme => ButtonThemeData(
        colorScheme: _colorScheme,
        shape: _circularBorderRadius,
        buttonColor: AppColors.success,
      );

  static AppBarTheme get _appBarTheme => AppBarTheme(
        elevation: 0.0,
        color: AppColors.background,
        centerTitle: false,
        titleTextStyle: TextStyles.headline5.semiBold,
        iconTheme: _iconTheme,
        actionsIconTheme: _iconTheme,
      );

  static BottomAppBarTheme get _bottomAppBarTheme => const BottomAppBarTheme(
        elevation: 0.0,
        color: AppColors.background,
        shape: CircularNotchedRectangle(),
      );

  static TabBarTheme get _tabBarTheme => TabBarTheme(
        labelColor: AppColors.onBackground,
        labelStyle: TextStyles.headline5,
        indicatorSize: TabBarIndicatorSize.tab,
      );

  static CardTheme get _cardTheme => CardTheme(
        elevation: 8.0,
        color: AppColors.background,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: _circularBorderRadius,
      );

  static DividerThemeData get _dividerTheme => const DividerThemeData(
        space: 8.0,
        thickness: 0.4,
      );

  static BottomSheetThemeData get _bottomSheetTheme =>
      const BottomSheetThemeData(
        elevation: 12.0,
        modalElevation: 12.0,
        clipBehavior: Clip.antiAlias,
        backgroundColor: AppColors.background,
        modalBackgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
      );

  static DialogTheme get _dialogTheme => DialogTheme(
        elevation: 16.0,
        shape: _circularBorderRadius,
        backgroundColor: AppColors.background,
        titleTextStyle: TextStyles.headline4,
        contentTextStyle: TextStyles.headline5,
      );

  static PopupMenuThemeData get _popupMenuTheme => PopupMenuThemeData(
        elevation: 8.0,
        color: AppColors.background,
        shape: _circularBorderRadius,
        textStyle: TextStyles.headline5,
      );

  static SnackBarThemeData get _snackBarTheme => SnackBarThemeData(
        shape: _circularBorderRadius,
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.background,
      );
}
