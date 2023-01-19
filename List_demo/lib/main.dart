import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(

          appBar: AppBar(title: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.shopping_bag_outlined),
              Text("List of Fruits",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            ],
          ),
          ),
            backgroundColor: Colors.teal,
          ),
          body:Row(
        children: [
          Column(
            [
              Icon(Icons.apple),
              Text("app")
            ]
          )
        ],
          )

        ),

      ),);
  }
}
class Customer {
  String img;
  String name;

  Customer(this.img, this.name);


}