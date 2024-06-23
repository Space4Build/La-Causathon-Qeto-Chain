// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

class StorePainter extends StatelessWidget {
  final double width;
  final Color? color;
  const StorePainter({required this.width, super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, width * 1.0416666666666667),
      painter: RPSCustomPainter(color),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color? color;

  RPSCustomPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path();
    path_0.moveTo(size.width * 0.08333333, size.height * 0.7820240);
    path_0.cubicTo(
        size.width * 0.06147208,
        size.height * 0.7820240,
        size.width * 0.04375000,
        size.height * 0.7990360,
        size.width * 0.04375000,
        size.height * 0.8200240);
    path_0.cubicTo(
        size.width * 0.04375000,
        size.height * 0.8410080,
        size.width * 0.06147208,
        size.height * 0.8580240,
        size.width * 0.08333333,
        size.height * 0.8580240);
    path_0.lineTo(size.width * 0.08333333, size.height * 0.7820240);
    path_0.close();
    path_0.moveTo(size.width * 0.9166667, size.height * 0.8580240);
    path_0.cubicTo(
        size.width * 0.9385292,
        size.height * 0.8580240,
        size.width * 0.9562500,
        size.height * 0.8410080,
        size.width * 0.9562500,
        size.height * 0.8200240);
    path_0.cubicTo(
        size.width * 0.9562500,
        size.height * 0.7990360,
        size.width * 0.9385292,
        size.height * 0.7820240,
        size.width * 0.9166667,
        size.height * 0.7820240);
    path_0.lineTo(size.width * 0.9166667, size.height * 0.8580240);
    path_0.close();
    path_0.moveTo(size.width * 0.1666667, size.height * 0.1685936);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.1305936);
    path_0.cubicTo(
        size.width * 0.1477479,
        size.height * 0.1305936,
        size.width * 0.1314738,
        size.height * 0.1434460,
        size.width * 0.1278258,
        size.height * 0.1612672);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.1685936);
    path_0.close();
    path_0.moveTo(size.width * 0.8333333, size.height * 0.1685936);
    path_0.lineTo(size.width * 0.8721750, size.height * 0.1612672);
    path_0.cubicTo(
        size.width * 0.8685250,
        size.height * 0.1434460,
        size.width * 0.8522542,
        size.height * 0.1305936,
        size.width * 0.8333333,
        size.height * 0.1305936);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.1685936);
    path_0.close();
    path_0.moveTo(size.width * 0.8888875, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.8888875, size.height * 0.4780240);
    path_0.cubicTo(
        size.width * 0.9007250,
        size.height * 0.4780240,
        size.width * 0.9119375,
        size.height * 0.4729400,
        size.width * 0.9194583,
        size.height * 0.4641640);
    path_0.cubicTo(
        size.width * 0.9269750,
        size.height * 0.4553880,
        size.width * 0.9300125,
        size.height * 0.4438440,
        size.width * 0.9277292,
        size.height * 0.4326960);
    path_0.lineTo(size.width * 0.8888875, size.height * 0.4400240);
    path_0.close();
    path_0.moveTo(size.width * 0.1111112, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.07227042, size.height * 0.4326960);
    path_0.cubicTo(
        size.width * 0.06998833,
        size.height * 0.4438440,
        size.width * 0.07302292,
        size.height * 0.4553880,
        size.width * 0.08054208,
        size.height * 0.4641640);
    path_0.cubicTo(
        size.width * 0.08806125,
        size.height * 0.4729400,
        size.width * 0.09927542,
        size.height * 0.4780240,
        size.width * 0.1111112,
        size.height * 0.4780240);
    path_0.lineTo(size.width * 0.1111112, size.height * 0.4400240);
    path_0.close();
    path_0.moveTo(size.width * 0.2526221, size.height * 0.4137760);
    path_0.cubicTo(
        size.width * 0.2490279,
        size.height * 0.4344760,
        size.width * 0.2635954,
        size.height * 0.4540560,
        size.width * 0.2851592,
        size.height * 0.4575040);
    path_0.cubicTo(
        size.width * 0.3067229,
        size.height * 0.4609560,
        size.width * 0.3271175,
        size.height * 0.4469720,
        size.width * 0.3307113,
        size.height * 0.4262680);
    path_0.lineTo(size.width * 0.2526221, size.height * 0.4137760);
    path_0.close();
    path_0.moveTo(size.width * 0.3723779, size.height * 0.1862668);
    path_0.cubicTo(
        size.width * 0.3759721,
        size.height * 0.1655652,
        size.width * 0.3614046,
        size.height * 0.1459868,
        size.width * 0.3398408,
        size.height * 0.1425364);
    path_0.cubicTo(
        size.width * 0.3182771,
        size.height * 0.1390864,
        size.width * 0.2978825,
        size.height * 0.1530712,
        size.width * 0.2942887,
        size.height * 0.1737724);
    path_0.lineTo(size.width * 0.3723779, size.height * 0.1862668);
    path_0.close();
    path_0.moveTo(size.width * 0.2777779, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.2381946, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.2381946, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.2777779, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.2777779, size.height * 0.6028800);
    path_0.close();
    path_0.moveTo(size.width * 0.7222208, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.7222208, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.7618042, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.7618042, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.7222208, size.height * 0.6028800);
    path_0.close();
    path_0.moveTo(size.width * 0.6692875, size.height * 0.4262680);
    path_0.cubicTo(
        size.width * 0.6728833,
        size.height * 0.4469720,
        size.width * 0.6932750,
        size.height * 0.4609560,
        size.width * 0.7148417,
        size.height * 0.4575040);
    path_0.cubicTo(
        size.width * 0.7364042,
        size.height * 0.4540560,
        size.width * 0.7509708,
        size.height * 0.4344760,
        size.width * 0.7473792,
        size.height * 0.4137760);
    path_0.lineTo(size.width * 0.6692875, size.height * 0.4262680);
    path_0.close();
    path_0.moveTo(size.width * 0.7057125, size.height * 0.1737724);
    path_0.cubicTo(
        size.width * 0.7021167,
        size.height * 0.1530712,
        size.width * 0.6817250,
        size.height * 0.1390864,
        size.width * 0.6601583,
        size.height * 0.1425364);
    path_0.cubicTo(
        size.width * 0.6385958,
        size.height * 0.1459868,
        size.width * 0.6240292,
        size.height * 0.1655652,
        size.width * 0.6276208,
        size.height * 0.1862668);
    path_0.lineTo(size.width * 0.7057125, size.height * 0.1737724);
    path_0.close();
    path_0.moveTo(size.width * 0.4604167, size.height * 0.4200240);
    path_0.cubicTo(
        size.width * 0.4604167,
        size.height * 0.4410080,
        size.width * 0.4781375,
        size.height * 0.4580240,
        size.width * 0.5000000,
        size.height * 0.4580240);
    path_0.cubicTo(
        size.width * 0.5218625,
        size.height * 0.4580240,
        size.width * 0.5395833,
        size.height * 0.4410080,
        size.width * 0.5395833,
        size.height * 0.4200240);
    path_0.lineTo(size.width * 0.4604167, size.height * 0.4200240);
    path_0.close();
    path_0.moveTo(size.width * 0.5395833, size.height * 0.1800196);
    path_0.cubicTo(
        size.width * 0.5395833,
        size.height * 0.1590328,
        size.width * 0.5218625,
        size.height * 0.1420196,
        size.width * 0.5000000,
        size.height * 0.1420196);
    path_0.cubicTo(
        size.width * 0.4781375,
        size.height * 0.1420196,
        size.width * 0.4604167,
        size.height * 0.1590328,
        size.width * 0.4604167,
        size.height * 0.1800196);
    path_0.lineTo(size.width * 0.5395833, size.height * 0.1800196);
    path_0.close();
    path_0.moveTo(size.width * 0.08333333, size.height * 0.8580240);
    path_0.lineTo(size.width * 0.9166667, size.height * 0.8580240);
    path_0.lineTo(size.width * 0.9166667, size.height * 0.7820240);
    path_0.lineTo(size.width * 0.08333333, size.height * 0.7820240);
    path_0.lineTo(size.width * 0.08333333, size.height * 0.8580240);
    path_0.close();
    path_0.moveTo(size.width * 0.1270833, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.1270833, size.height * 0.8200240);
    path_0.lineTo(size.width * 0.2062500, size.height * 0.8200240);
    path_0.lineTo(size.width * 0.2062500, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.1270833, size.height * 0.4400240);
    path_0.close();
    path_0.moveTo(size.width * 0.7937500, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.7937500, size.height * 0.8200240);
    path_0.lineTo(size.width * 0.8729167, size.height * 0.8200240);
    path_0.lineTo(size.width * 0.8729167, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.7937500, size.height * 0.4400240);
    path_0.close();
    path_0.moveTo(size.width * 0.1666667, size.height * 0.2065936);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.2065936);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.1305936);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.1305936);
    path_0.lineTo(size.width * 0.1666667, size.height * 0.2065936);
    path_0.close();
    path_0.moveTo(size.width * 0.7944917, size.height * 0.1759204);
    path_0.lineTo(size.width * 0.8500500, size.height * 0.4473480);
    path_0.lineTo(size.width * 0.9277292, size.height * 0.4326960);
    path_0.lineTo(size.width * 0.8721750, size.height * 0.1612672);
    path_0.lineTo(size.width * 0.7944917, size.height * 0.1759204);
    path_0.close();
    path_0.moveTo(size.width * 0.8888875, size.height * 0.4020240);
    path_0.lineTo(size.width * 0.1111112, size.height * 0.4020240);
    path_0.lineTo(size.width * 0.1111112, size.height * 0.4780240);
    path_0.lineTo(size.width * 0.8888875, size.height * 0.4780240);
    path_0.lineTo(size.width * 0.8888875, size.height * 0.4020240);
    path_0.close();
    path_0.moveTo(size.width * 0.1499517, size.height * 0.4473480);
    path_0.lineTo(size.width * 0.2055075, size.height * 0.1759204);
    path_0.lineTo(size.width * 0.1278258, size.height * 0.1612672);
    path_0.lineTo(size.width * 0.07227042, size.height * 0.4326960);
    path_0.lineTo(size.width * 0.1499517, size.height * 0.4473480);
    path_0.close();
    path_0.moveTo(size.width * 0.3307113, size.height * 0.4262680);
    path_0.lineTo(size.width * 0.3723779, size.height * 0.1862668);
    path_0.lineTo(size.width * 0.2942887, size.height * 0.1737724);
    path_0.lineTo(size.width * 0.2526221, size.height * 0.4137760);
    path_0.lineTo(size.width * 0.3307113, size.height * 0.4262680);
    path_0.close();
    path_0.moveTo(size.width * 0.2381946, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.2381946, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.3173612, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.3173612, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.2381946, size.height * 0.4400240);
    path_0.close();
    path_0.moveTo(size.width * 0.2777779, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.7222208, size.height * 0.6408800);
    path_0.lineTo(size.width * 0.7222208, size.height * 0.5648800);
    path_0.lineTo(size.width * 0.2777779, size.height * 0.5648800);
    path_0.lineTo(size.width * 0.2777779, size.height * 0.6408800);
    path_0.close();
    path_0.moveTo(size.width * 0.7618042, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.7618042, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.6826375, size.height * 0.4400240);
    path_0.lineTo(size.width * 0.6826375, size.height * 0.6028800);
    path_0.lineTo(size.width * 0.7618042, size.height * 0.6028800);
    path_0.close();
    path_0.moveTo(size.width * 0.7473792, size.height * 0.4137760);
    path_0.lineTo(size.width * 0.7057125, size.height * 0.1737724);
    path_0.lineTo(size.width * 0.6276208, size.height * 0.1862668);
    path_0.lineTo(size.width * 0.6692875, size.height * 0.4262680);
    path_0.lineTo(size.width * 0.7473792, size.height * 0.4137760);
    path_0.close();
    path_0.moveTo(size.width * 0.5395833, size.height * 0.4200240);
    path_0.lineTo(size.width * 0.5395833, size.height * 0.1800196);
    path_0.lineTo(size.width * 0.4604167, size.height * 0.1800196);
    path_0.lineTo(size.width * 0.4604167, size.height * 0.4200240);
    path_0.lineTo(size.width * 0.5395833, size.height * 0.4200240);
    path_0.close();

    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xff383737).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
