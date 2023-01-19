import 'dart:math';

import 'package:flutter/material.dart';
class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {





  Map<String,int> setLength(int length){
    String min="",max="";
    //111111 999999

    for(int i=0;i<length;i++){

      min += "1";
      max+= "9";

    }

    int limit = int.parse(max) - int.parse(min);
    int add = int.parse(min);
    
    Map<String,int> result = {
      "limit" : limit,
      "add": add,
    };
    
    return result;
  }

  
  
  String random_otp(int length){
    
    Map<String,int> otpConfig = setLength(length);

    int otp = Random().nextInt(otpConfig["limit"]!) + otpConfig["add"]!;
    
    return otp.toString();


  }
  String ?   value='';
  Stringsplitmul(value)
  {
    if(value.contains('*'))
      {
        List list1=value.split('*');
        return int.parse(list1[0])*int.parse(list1[1]);
      }
    else if(value.contains('/'))
      {
        List list1=value.split('/');
        return int.parse(list1[0])~/int.parse(list1[1]);
      }else if(value.contains('+'))
    {
      List list1=value.split('+');
      return int.parse(list1[0])+int.parse(list1[1]);
    }

    else if(value.contains('-'))
    {
      List list1=value.split('-');
      return int.parse(list1[0])-int.parse(list1[1]);
    }

  }

  @override

  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          body: SafeArea(
              child: Column(
                children: [SizedBox(
                  height: 250,
                ),

                  //

                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Container(
                      alignment: Alignment.topRight,
                  child: Text('$value',style: TextStyle(fontSize: 30, color: Color.fromARGB(
                          255, 174, 174, 174))),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(

                        alignment: Alignment.topRight,

                        child:  Text(" ${Stringsplitmul(value)}",style: TextStyle(fontSize: 100)),



                      ),
                    ),
                  ),
                  SizedBox(
                      width: 370,
                      child: Divider
                        (
                        thickness: 1,
                        color: Colors.black,
                      )
                  ),
                  SizedBox(
                    height: 30,

                  ),


                  Expanded(

                    child: Padding(
                      padding: const EdgeInsets.only(right: 16,left: 16),
                      child: Row(
                        children: [
                          Expanded(

                            flex: 3,
                            child: Column(
                              children: [
                                Expanded(child:Row(

                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Color.fromARGB(
                                                255, 255, 90, 102),),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.circular(60))
                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='0';


                                            setState(() {



                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "AC",
                                                style: TextStyle(
                                                    fontSize: 32, color: Colors.white),
                                              ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}%';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "%",
                                                style: TextStyle(
                                                    fontSize: 22, color: Color.fromARGB(255, 174, 174, 174)),
                                              ))),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}/';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "/",
                                                style: TextStyle(
                                                  fontSize: 22, color:Color.fromARGB(
                                                    255, 255, 90, 102),),
                                              ))),
                                    ),

                                  ],
                                ), ),
                                Expanded(child:Row(

                                  children: [
                                    Expanded(
                                      child: ElevatedButton(


                                          style: ButtonStyle(

                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}7';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "7",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}8';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "8",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}9';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "9",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}*';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "*",
                                                style: TextStyle(
                                                    fontSize: 22, color:Color.fromARGB(
                                                    255, 255, 90, 102),),
                                              ))),
                                    ),

                                  ],
                                ), ),
                                Expanded(child:Row(

                                  children: [

                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}4';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "4",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}5';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "5",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}6';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "6",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}-';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 22, color:Color.fromARGB(
                                                    255, 255, 90, 102)),
                                              ))),
                                    ),
                                  ],
                                ), ),
                                Expanded(child:Row(

                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}1';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}2';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}3';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}+';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(fontSize: 22, color:Color.fromARGB(
                                                    255, 255, 90, 102),),
                                              ))),
                                    ),
                                  ],
                                ), ),
                                Expanded(child:Row(

                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}00';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "00",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}0';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.white),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(

                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed:(){
                                            value='${value !}.';
                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                ".",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.black),
                                              ))),
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(

                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor:
                                            MaterialStateProperty.all( Color.fromARGB(
                                                255, 255, 90, 102)),
                                            shape: MaterialStateProperty.all(
                                              const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.circular(50)),
                                                // Change your radius here

                                              ),
                                            ),
                                          ),
                                          onPressed: () {

                                            setState(() {

                                            });
                                          },
                                          child: const Center(
                                              child: Text(
                                                "=",
                                                style: TextStyle(
                                                    fontSize: 22, color: Colors.white),
                                              ))),
                                    ),
                                  ],
                                ), ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              )),
        ),
      );
  }
}