import 'package:flutter/material.dart';
class Shape1 extends StatelessWidget {
  const Shape1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
        body: Center(
          child: SizedBox(
            height: 270,
            width: 260,

            child: Stack(
              children: [
                Positioned(
top: 0,
                  child:SizedBox(
            height: 130,
              width: 260,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print('Do Something'),
                    child: CustomPaint(
                      size: Size(120, 120),
                      painter: CurvePainter(

                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('Do Something'),
                    child: CustomPaint(
                      size: Size(120, 120),
                      painter: CurvePainter1(),
                    ),
                  ),

                ],
              ),
            ),
      ),
                Center(


                  child:  GestureDetector(

                  onTap: () => print('Do Something'),
                  child: CustomPaint(
                    size: Size(120, 120),
                    painter: CurvePainter4(),
                  ),
                ),),
                Positioned(
                  bottom:0,
                  child:SizedBox(
                  height: 130,
                  width: 260,
                  child: Row(mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => print('Do Something'),
                        child: CustomPaint(
                          size: Size(120, 120),

                          painter: CurvePainter2(

                          ),

                        ),
                      ),
                      GestureDetector(
                        onTap: () => print('Do Something'),
                        child: CustomPaint(
                          size: Size(120, 120),
                          painter: CurvePainter3(),
                        ),
                      ),

                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class CurvePainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromARGB(255, 166, 211, 255)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..addOval(Rect.fromCircle(center: Offset(60,60), radius:size.width *.45 ));
    canvas.drawShadow(path.shift(Offset(4, 4)),Color.fromRGBO(255, 255, 255, .3), 8.0,true);

    //..lineTo(size.width/2, 0)
    //..quadraticBezierTo(size.width/2, 0, 0, size.height/2);




    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
       ..color = Color.fromRGBO(252, 255, 230, 1.0)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width/2, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height/2)
      ..quadraticBezierTo(size.width*0.40,size.height*0.40,size.width/2,0);
    canvas.drawShadow(path.shift(Offset(4, 4)),Color.fromRGBO(255, 255, 255, .2), 6.0,true);


    //..lineTo(size.width/2, 0)
    //..quadraticBezierTo(size.width/2, 0, 0, size.height/2);





    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
       ..color = Color.fromRGBO(252, 255, 230, 1.0)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width/2, 0)
      ..quadraticBezierTo(size.width*0.60, size.height*0.40, size.width, size.height/2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    canvas.drawShadow(path.shift(Offset(4, 4)),Color.fromRGBO(255, 255, 255, .2), 6.0,true);
    // ..lineTo(size.width,size.height/2)
    // ..lineTo(size.width, size.height)
    // ..lineTo(0,size.height);
    //

    // ..quadraticBezierTo(size.width-(size.height/2), size.height/2,0, size.height/2);
    //




    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Color.fromRGBO(252, 255, 230, 1.0)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0,size.height)
      ..lineTo(size.width/2,size.height)

      ..quadraticBezierTo(size.width-(size.height*0.59), size.height*0.59,0, size.height/2);
    //
    canvas.drawShadow(path.shift(Offset(4, 4)),Color.fromRGBO(255, 255, 255, .2), 6.0,true);



    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromRGBO(252, 255, 230, 1.0)
      ..style = PaintingStyle.fill;


    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width,size.height/2)
      ..quadraticBezierTo(size.width*0.59, size.height*0.59,size.width-(size.height/2), size.height)
    //
    // ..quadraticBezierTo(size.width/2,0, size.width/2, size.height)
      ..lineTo(0, size.height);

    canvas.drawShadow(path.shift(Offset(4, 4)),Color.fromRGBO(255, 255, 255, .2), 6.0,true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}