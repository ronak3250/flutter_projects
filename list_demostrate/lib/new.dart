import 'package:flutter/material.dart';
class Listing extends StatefulWidget {
  const Listing({super.key});


  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
//List<String > l1=["Ronak","Sahil","Jiten"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          // body:Column(
          //   children:[
          //     Text("hello i am"),
          //  ...   l1.map((String value) => Text(value)).toList() // read the data from the  list
          //   ]
          body: Ink(
            child: InkWell(
              splashColor: Colors.red,
              highlightColor: Colors.yellow,
              child: Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                child: const Text('Click Me', style: TextStyle(fontSize: 20),),
              ),
              onTap: () {
                setState(() {
                 print('tapped') ;
                });
              },
              onDoubleTap: () {
                setState(() {
                  print("Double Tap");

                });
              },
                        ),
          ),
        ),
      ),
    );
  }
}

