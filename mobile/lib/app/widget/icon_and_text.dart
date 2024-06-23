import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    required this.title,
    required this.icon,
    super.key,
    this.color,
    this.painter,
  });
  final String title;
  final IconData? icon;
  final Color? color;
  final Widget? painter;

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaler.scale(10) / 10;
    return Row(
      children: [
        painter ??
            (icon != null
                ? Icon(
                    icon,
                    color: color ?? const Color(0xff789395),
                    size: (16),
                  )
                : const SizedBox(width: 0)),
        SizedBox(width: (8)),
        Expanded(
          child: Text(
            title,
            textScaler: TextScaler.linear(min(textScaleFactor, 1.15)),
            style: themeOf(context).bodySmall.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: (14),
                  color: color,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
