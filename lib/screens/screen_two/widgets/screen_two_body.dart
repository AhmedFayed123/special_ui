import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screen_one/widgets/screen_one_body.dart';

class ScreenTwoBody extends StatefulWidget {
  const ScreenTwoBody({super.key});

  @override
  State<ScreenTwoBody> createState() => _ScreenTwoBodyState();
}

class _ScreenTwoBodyState extends State<ScreenTwoBody> {
  int _counter = 0;
  int selectedIndex = 0;

  void selectContainer(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter <= 0) {
      _counter = 1;
    }
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 105,
            top: 660,
            child: SizedBox(
              width: 500,
              height: 500,
              child: CustomPaint(
                painter: RPSCustomPainterBig(),
              ),
            ),
          ),
          Positioned(
            left: 180,
            bottom: 115,
            child: Text(
              'x$_counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
          ),
          Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(300),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 150,
            left: 50,
            child: Transform.rotate(
              angle: .3,
              child: Image.asset(
                'assets/images/tree.jpg',
                width: 350,
                height: 350,
              ),
            ),
          ),
          Positioned(
            top: 400,
            right: 150,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(30)),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 120,
            child: Column(
              children: [
                const Text(
                  'Strelitzia',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                ),
                const Text(
                  'Bird of Paradise',
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${_counter*100}\$',
                  style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                ),
              ],
            ),
          ),
          Positioned(
            right: -170,
            bottom: -170,
            child: SizedBox(
              width: 500,
              height: 500,
              child: CustomPaint(
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          const Positioned(
            right: 10,
            bottom: 140,
            child: Icon(Icons.home),
          ),
          Positioned(
            left: -170,
            bottom: -15,
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
            bottom: 145,
            child: Icon(Icons.person),
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
                  painter: RPSCustomPainterGreen(),
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
            bottom: 30,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: _incrementCounter,
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: _decrementCounter,
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => selectContainer(0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: selectedIndex == 0 ? Colors.green: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text('M'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  GestureDetector(
                    onTap: () => selectContainer(1),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: selectedIndex == 1 ? Colors.green: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text('L'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  GestureDetector(
                    onTap: () => selectContainer(2),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: selectedIndex == 2 ? Colors.green: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Text('m'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainterGreen extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    Paint paint_fill_0 = Paint()
      ..color = Colors.green.shade200
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
      ..color = Colors.green.shade200
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

class RPSCustomPainterBig extends CustomPainter {
  final double scaleFactor;

  RPSCustomPainterBig({this.scaleFactor = 0.4});

  @override
  void paint(Canvas canvas, Size size) {
    double scaleWidth = size.width * scaleFactor;
    double scaleHeight = size.height * scaleFactor / 1.5;

    // Layer 1
    Paint paint_fill_0 = Paint()
      ..color = Colors.green.shade200
      ..style = PaintingStyle.fill
      ..strokeWidth = scaleWidth * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(scaleWidth * 0.9983333, scaleHeight * 0.0085714);
    path_0.quadraticBezierTo(scaleWidth * 1.0634583, scaleHeight * 0.9040714,
        scaleWidth * 0.8291667, scaleHeight * 0.8940000);
    path_0.cubicTo(
        scaleWidth * 0.7428750,
        scaleHeight * 0.8705714,
        scaleWidth * 0.6142917,
        scaleHeight * 0.7825714,
        scaleWidth * 0.4880000,
        scaleHeight * 0.7705714);
    path_0.cubicTo(
        scaleWidth * 0.3655833,
        scaleHeight * 0.7825714,
        scaleWidth * 0.2207500,
        scaleHeight * 0.8820000,
        scaleWidth * 0.1636667,
        scaleHeight * 0.8940000);
    path_0.quadraticBezierTo(scaleWidth * -0.0589167, scaleHeight * 0.8385000,
        0, scaleHeight * 0.0114286);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1
    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = scaleWidth * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
