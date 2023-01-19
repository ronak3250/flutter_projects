import 'package:flutter/material.dart';
import 'dart:math';
class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    final _random = Random();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 250,),
                      child:   Container(height: 100,
                          width: 180,
                          child: Text("Color Palette Generator",style: TextStyle(color:Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),)),
                    ),

                    Container(
                      height: 350,
                      width: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder:(BuildContext context,int index )
                        {
                          return
                            Container(
                                height: 50,
                                width: 100,
                                color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                                [Random().nextInt(9) * 100]
                            );
                        },
                        itemCount:Random().nextInt(6+1),
                      ),
                    ),



                    Container(
                      height: 45,
                      width: 210,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 3, color: Colors.blue),
                      ),
                      child: FloatingActionButton(
                          backgroundColor: Colors.white,

                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text('Generate',style: TextStyle(fontSize: 20,color: Colors.blue),),
                          onPressed:(){
                            setState(() {

                            });
                          }),
                    )
                  ]),
            ),
          )),

    );

  }
}