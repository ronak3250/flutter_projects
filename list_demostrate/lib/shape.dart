import 'package:flutter/material.dart';
class Shape extends StatelessWidget {
  const Shape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

   home: SafeArea(child: Scaffold(
     body: Column(

crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: SizedBox(
             height: 130,
             width: 260,
             child: Row(
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
         )
         ,SizedBox(
           height: 10,
           width: 10,
           child:  GestureDetector(
             onTap: () => print('Do Something'),
             child: CustomPaint(
               size: Size(120, 120),
               painter: CurvePainter4(),
             ),
           ),
         )
         ,      SizedBox(
           height: 150,
           width: 260,
           child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               GestureDetector(
                 onTap: () => print('Do Something'),
                 child: CustomPaint(
                   size: Size(120, 120),
                   painter: CurvePainter2(),
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
         )
         ,


       ],
     ),
   ),

   ),
    );
  }
}

class CurvePainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xFFE32087)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..addOval(Rect.fromCircle(center: const Offset(5,8), radius:50 ));

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
      ..color = Color(0xFFE32087)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width/2, 0)
      ..lineTo(size.width, 0)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height)
    ..lineTo(0, size.height/2)
    ..quadraticBezierTo(size.width/2,size.height/2,size.width/2,0);

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
      ..color = Color(0xFFE32087)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width/2, 0)
    ..quadraticBezierTo(size.width/2, size.height/2, size.width, size.height/2)
    ..lineTo(size.width, size.height)
    ..lineTo(0, size.height);

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
      ..color = Color(0xFFE32087)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0,size.height)
      ..lineTo(size.width/2,size.height)

     ..quadraticBezierTo(size.width-(size.height/2), size.height/2,0, size.height/2);
    //




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
      ..color = Color(0xFFE32087)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width,size.height/2)
      ..quadraticBezierTo(size.width-(size.height/2), size.height/2,size.width-(size.height/2), size.height)
    //
    // ..quadraticBezierTo(size.width/2,0, size.width/2, size.height)
      ..lineTo(0, size.height);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}