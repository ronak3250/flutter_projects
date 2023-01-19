import 'package:flutter/material.dart';
import 'package:shape/HomeScreen.dart';

class Gameover extends StatelessWidget {
  const Gameover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/celebration.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Congratulations ",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                  textDirection: TextDirection.rtl,
                ),

                SizedBox(
                  height: 30,
                ),
                Text(
                  "Game Over",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                ),
                //SizedBox(height: 30,),

                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 40),
                      backgroundColor: Color.fromRGBO(24, 25, 30, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));},
                  child: Text('Restart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
