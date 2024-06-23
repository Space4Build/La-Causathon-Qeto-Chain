import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mi_mercadito_app/core/theme/tokens/app_colors.dart';
import 'package:mi_mercadito_app/core/theme/tokens/app_typography.dart';
import 'package:themexpert/themexpert.dart';

class AppTheme extends BaseTheme {
  const AppTheme(
    super.context,
  );

  SystemUiOverlayStyle get uiOverlayStyle =>
      darkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark;

  Color get primaryColor => AppColors.primaryColor;

  Color get secondaryColor => AppColors.secondaryColor;

  Color get errorColor => AppColors.errorColor;

  Color get successColor => AppColors.successColor;

  Color get backgroundColor => AppColors.backgroundColor;

  Color get backgroundColor2 => AppColors.backgroundColor2;

  Color get appBarColor => AppColors.appBarColor;

  Color get textColor => AppColors.textColor;

  Color get buttonDisabled => AppColors.textColor06;

  Color get white => AppColors.lightWhite;

  Color get textNotSelected => AppColors.textColor05;

  Color get textColorHint => AppColors.textColor02;

  Color get textAppBar => AppColors.textColor03;

  Color get textTitleField => AppColors.textColor04;

  Color get textFillError => AppColors.lightTextColor;

  Color get textFillDisabled => AppColors.lightTextColor02;

  Color get textFillEnabled => AppColors.lightTextColor03;

  Color get cardNotOffer => AppColors.textColor07;

  TextStyle get obBoardingInfoFont => AppTypography.montserrat.copyWith(
        fontSize: (20),
      );

  TextStyle get buttonFont => AppTypography.montserrat.copyWith(
        fontWeight: FontWeight.bold,
        color: primaryColor,
      );

  TextStyle get buttonFontWhite => AppTypography.montserrat.copyWith(
        color: white,
      );

  TextStyle get hintSearchFont => AppTypography.montserrat.copyWith(
        fontSize: (18),
        color: textColorHint,
      );

  TextStyle get titleAppBarAuthFont => AppTypography.nunito.copyWith(
        fontSize: (24),
        color: textAppBar,
        fontWeight: FontWeight.w800,
      );
  TextStyle get titleFieldFont => AppTypography.montserrat.copyWith(
        fontSize: (14),
        color: textTitleField,
        fontWeight: FontWeight.w700,
      );

  TextStyle get hintFieldFont => AppTypography.montserrat.copyWith(
        fontSize: (16),
        color: textColorHint,
      );

  TextStyle get titleSmall => AppTypography.nunito.copyWith(
        color: primaryColor,
      );
  TextStyle get bodyMedium => AppTypography.montserrat.copyWith(
        color: textTitleField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get bodySmall => AppTypography.montserrat.copyWith(
        color: primaryColor,
      );

  ThemeData get themeData => ThemeData.light(
        useMaterial3: defaultTargetPlatform == TargetPlatform.android,
      ).copyWith(
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          error: errorColor,
          //   surface: backgroundColor,
        ),
      );
}
