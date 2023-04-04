// ignore_for_file: prefer_const_constructors

import 'package:credit_saison/colors.dart';
import 'package:flutter/material.dart';

class Line2 extends StatefulWidget {
  const Line2({super.key});

  @override
  State<Line2> createState() => _Line2State();
}

class _Line2State extends State<Line2> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.08,
      width: mediaQuery.size.width * 0.20,
      child: CustomPaint(
        painter: LinePaint2(),
      ),
    );
  }
}

class LinePaint2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = colors.mywhite
      ..strokeWidth = 10
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final center = Offset(10, 70);

    canvas.drawCircle(
      center,
      size.width * 1 / 3,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
