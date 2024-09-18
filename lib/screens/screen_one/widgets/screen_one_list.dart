import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';
import 'package:ui_task_2/screens/screen_two/screen_two.dart';

class ScreenOneList extends StatelessWidget {
  const ScreenOneList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56.0, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 550,
        child: ListView.builder(
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) => const ListItem(),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScreenTwo(),),);
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(36),
              ),
              width: double.infinity,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/tree.jpg',
                      width: 80,
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingStars(
                          rating: 3,
                          editable: true,
                          iconSize: 10,
                          color: Colors.yellowAccent,
                        ),
                        const Text(
                          'Banana tree',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '78\$',
                          style: TextStyle(
                            color: Colors.green[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.green[200],
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: Text(
                                'x2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Colors.green[200],
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -85,
              top: -31,
              child: Stack(
                children: [
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CustomPaint(
                      painter: RPSCustomPainter(),
                    ),
                  ),
                  const Positioned(
                    top: 93,
                    left: 185,
                    child: Icon(
                      Icons.lock,
                      size: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.green.shade200
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.7230000,size.height*0.2028571);
    path_0.quadraticBezierTo(size.width*0.7186250,size.height*0.2540714,size.width*0.6891667,size.height*0.2574286);
    path_0.cubicTo(size.width*0.6524583,size.height*0.2562857,size.width*0.6310417,size.height*0.2597143,size.width*0.6183333,size.height*0.2597143);
    path_0.cubicTo(size.width*0.5982083,size.height*0.2660714,size.width*0.5896250,size.height*0.2667857,size.width*0.5871667,size.height*0.2897143);
    path_0.cubicTo(size.width*0.5912917,size.height*0.3047857,size.width*0.6043750,size.height*0.3043571,size.width*0.6203333,size.height*0.3077143);
    path_0.cubicTo(size.width*0.6345000,size.height*0.3087857,size.width*0.6495000,size.height*0.3040714,size.width*0.6950000,size.height*0.3028571);
    path_0.quadraticBezierTo(size.width*0.7181250,size.height*0.3030714,size.width*0.7261667,size.height*0.3494286);

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.green.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
