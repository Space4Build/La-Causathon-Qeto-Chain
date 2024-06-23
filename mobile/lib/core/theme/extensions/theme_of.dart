import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/core/theme/app_theme.dart';
import 'package:themexpert/themexpert.dart';

AppTheme themeOf(BuildContext context) {
  return ThemeX.ofType<AppTheme>(context);
}
