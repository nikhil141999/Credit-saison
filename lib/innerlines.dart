// ignore_for_file: prefer_const_constructors

import 'package:credit_saison/colors.dart';
import 'package:flutter/material.dart';

class Inlines extends StatefulWidget {
  const Inlines({super.key});

  @override
  State<Inlines> createState() => _InlinesState();
}

class _InlinesState extends State<Inlines> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.08,
      width: mediaQuery.size.width * 0.20,
      child: CustomPaint(
        painter: LinePaint(),
      ),
    );
  }
}

// class ArcPaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = colors.mygrey
//       ..strokeWidth = 10
//       ..style = PaintingStyle.stroke;

//     final arc1 = Path();
//     arc1.arcToPoint(
//       Offset(size.width * 0.9, size.width * 0.6),
//       radius: Radius.circular(20),
//       clockwise: false,
//     );
//     arc1.moveTo(140, 140);

//     canvas.drawPath(arc1, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

class LinePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(150, 10);
    final paint = Paint()
      ..color = colors.mywhite
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, size.width * 1 / 3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
