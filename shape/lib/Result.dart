import 'package:flutter/material.dart';
import 'package:shape/GameOver.dart';
import 'package:shape/HomeScreen.dart';

class WonScreen extends StatefulWidget {
  int label;

  WonScreen(this.label);

 //const WonScreen( label,{Key? key}) : super(key: key);


  @override
  State<WonScreen> createState() => _WonScreenState();

}

class _WonScreenState extends State<WonScreen> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Your Answers Is Correct ",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                    textDirection: TextDirection.rtl,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "You Won",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                  ),
                  //SizedBox(height: 30,),
                  Text(
                    '${widget.label}',
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                  ),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gameover()));
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
          ),


    );
  }
}
