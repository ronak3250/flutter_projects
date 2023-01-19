import 'dart:math';

import 'package:flutter/material.dart';

class OtpRandom extends StatefulWidget {
  const OtpRandom({Key? key}) : super(key: key);

  @override
  State<OtpRandom> createState() => _OtpRandomState();
}

String Value = '';
String min = '';
String max = '';
int randomnum = 0;

ResetValue() {
  Value = '';
  errorValue = 0;
  min = '';
  max = '';
}

bool isreset = false;
int errorValue = 0;

class _OtpRandomState extends State<OtpRandom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(12, 16, 39, 1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Text(
                "OTP Generator",
                style: TextStyle(
                    color: Color.fromRGBO(245, 219, 135, 1), fontSize: 30),
              )),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: TextField(
                    onChanged: (value) => Value = value,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Color.fromRGBO(245, 219, 135, 1)),
                    decoration: InputDecoration(
                      hintText: 'Enter OTP Length',
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(245, 219, 135, 1)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(245, 219, 135, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(245, 219, 135, 1),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                width: 270,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(247, 222, 144, 1),
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        1.0, //
                      ),
                    ),
                  ],
                ),
                child: FloatingActionButton(
                  backgroundColor: Color.fromRGBO(255, 237, 186, 1),
                  elevation: 1,
                  onPressed: () {
                    for (int i = 0; i < int.parse(Value); i++) {
                      min += '1';
                      max += '9';
                    }
                    randomnum = int.parse(min) +
                        Random().nextInt((int.parse(max) + 1) - int.parse(min));

                    setState(() {
                      errorValue = randomnum;
                      Value = '';
                      randomnum = 0;
                      min = '';
                      max = '';
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 237, 186, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  '$errorValue',
                  style: TextStyle(
                      letterSpacing: 20.0,
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(255, 237, 186, 1),
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        1.0, //
                      ),
                    ),
                  ],
                ),
                child: FloatingActionButton(
                  backgroundColor: Color.fromRGBO(255, 237, 186, 1),
                  elevation: 1,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
