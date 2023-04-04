// ignore_for_file: prefer_const_constructors

import 'package:credit_saison/colors.dart';
import 'package:flutter/material.dart';

class Lines extends StatefulWidget {
  const Lines({super.key});

  @override
  State<Lines> createState() => _LinesState();
}

class _LinesState extends State<Lines> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.20,
              width: mediaQuery.size.width * 0.49,
              child: CustomPaint(
                painter: Circle2Paint(),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.20,
              width: mediaQuery.size.width * 0.49,
              child: CustomPaint(
                painter: CirclePaint(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CirclePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = colors.lightblue
      ..strokeWidth = 10
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    final center = Offset(-145, 120);

    canvas.drawCircle(
      center,
      size.width * 15 / 15,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Circle2Paint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = colors.lightblue
      ..strokeWidth = 10
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    final center = Offset(345, 120);

    canvas.drawCircle(
      center,
      size.width * 15 / 15,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RectangleRoundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = colors.darkblue
      ..strokeWidth = 10
      ..strokeWidth = 10
      // ..style = PaintingStyle.stroke;
      //you can use for full fill
      ..style = PaintingStyle.fill;
    // final a = Offset(size.width * 1 / 4, size.height * 1 / 4);
    // final b = Offset(size.width * 3 / 4, size.height * 3 / 4);
    final a = Offset(6, 40);
    final b = Offset(380, 150);
    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(32);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
} 


// class RectanglePaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = colors.yellow
//       ..strokeWidth = 10
//       ..strokeWidth = 10
//       ..style = PaintingStyle.stroke;

//     final a = Offset(size.width * 1 / 4, size.height * 1 / 4);
//     final b = Offset(size.width * 3 / 4, size.height * 3 / 4);
// // final a = Offset(50,50);
// //     final b = Offset(350, 350);
//     final rect = Rect.fromPoints(a, b);

//     canvas.drawRect(rect, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// } 





// class LinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = colors.yellow
//       ..strokeWidth = 10;

//     canvas.drawLine(
//       Offset(size.width * 1 / 6, size.height * 1 / 2),
//       Offset(size.width * 5 / 6, size.height * 0),
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
