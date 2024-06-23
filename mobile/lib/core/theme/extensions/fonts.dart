import 'package:flutter/material.dart';

/// extension To have fonts easily
extension Styles on TextStyle {
  TextStyle getStyle({
    Color? color,
    double? size,
    FontWeight? weight,
  }) =>
      copyWith(
        color: color ?? this.color,
        fontSize: size ?? fontSize,
        fontWeight: weight ?? fontWeight,
      );
}
