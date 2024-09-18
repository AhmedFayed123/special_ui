import 'package:flutter/material.dart';
import 'package:ui_task_2/screens/screen_one/widgets/screen_one_list.dart';

class ScreenOneBody extends StatelessWidget {
  const ScreenOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: -170,
            bottom: -40,
            child: SizedBox(
              width: 500,
              height: 500,
              child: Transform.rotate(
                angle: 600,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            bottom: 125,
            child: Icon(Icons.arrow_back_ios),
          ),
          Positioned(
            left: -125,
            bottom: -170,
            child: SizedBox(
              width: 500,
              height: 500,
              child: Transform.rotate(
                angle: 1.6,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 185,
            bottom: 5,
            child: Icon(Icons.lock),
          ),
          Positioned(
            right: -170,
            bottom: -195,
            child: SizedBox(
              width: 500,
              height: 500,
              child: CustomPaint(
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          const Positioned(
            right: 15,
            bottom: 120,
            child: Icon(Icons.arrow_forward_ios),
          ),
          const Column(
            children: [
              ScreenOneList(),
            ],
          ),

        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6666667, size.height * 0.2594286);
    path_0.quadraticBezierTo(size.width * 0.6604167, size.height * 0.2975714,
        size.width * 0.5810000, size.height * 0.3171429);
    path_0.cubicTo(
        size.width * 0.5674167,
        size.height * 0.3304286,
        size.width * 0.5594167,
        size.height * 0.3427143,
        size.width * 0.5626667,
        size.height * 0.3520000);
    path_0.cubicTo(
        size.width * 0.5617500,
        size.height * 0.3675714,
        size.width * 0.5729167,
        size.height * 0.3830000,
        size.width * 0.5823333,
        size.height * 0.3891429);
    path_0.quadraticBezierTo(size.width * 0.6642917, size.height * 0.4005000,
        size.width * 0.6661667, size.height * 0.4437143);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
