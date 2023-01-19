import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Container(

                child: Text("Hello"),
              ),
              TextField(

              ),
            ],
          )
        ),
      ),
    );
  }
}
