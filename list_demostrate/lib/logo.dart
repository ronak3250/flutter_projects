import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Center(child: Text("Red & White")),
            backgroundColor: Colors.red,
          ),
          body: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [


              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(

                      text: const TextSpan(text: "            G",style: TextStyle(color:Colors.green,fontSize:25),


                        children: [
                          TextSpan(text: "R",style: TextStyle(color:Colors.red,fontSize:28)),
              TextSpan(text: "APHICS",style: TextStyle(color:Colors.green,fontSize:25)),
                        ]
                      ),),


                  RichText(

                    text: const TextSpan(text: "   FLUTT",style: TextStyle(color:Colors.blue,fontSize:25),


                        children: [TextSpan(text: "E",style: TextStyle(color:Colors.red,fontSize:28)),
                          TextSpan(text: "R",style: TextStyle(color:Colors.blue,fontSize:25)),
                        ]
                    ),),

                  RichText(

                    text: const TextSpan(text: "         AN",style: TextStyle(color:Colors.green,fontSize:25),


                        children: [
                      TextSpan(text: "D",style: TextStyle(color:Colors.red,fontSize:28)),
                          TextSpan(text: "ROID",style: TextStyle(color:Colors.green,fontSize:25)),
                        ]
                    ),),
                  RichText(

                    text:
                    const TextSpan(text: "DESIGN ",style: TextStyle(color:Colors.orange,fontSize:25),

                        children: [TextSpan(text: "& ",style: TextStyle(color:Colors.red,fontSize:28)),
                          TextSpan(text: "DEVELOP",style: TextStyle(color:Colors.orange,fontSize:25)),
                        ]
                    ),),
                  RichText(

                    text: const TextSpan(text: "             W",style: TextStyle(color:Colors.red,fontSize:28),


                        children: [
                          TextSpan(text: "EB",style: TextStyle(color:Colors.blue,fontSize:25)),
                        ]
                    ),),
                  RichText(

                    text:
                    const TextSpan(text: "        FAS",style: TextStyle(color:Colors.limeAccent,fontSize:25),

                        children: [
                      TextSpan(text: "H",style: TextStyle(color:Colors.red,fontSize:28),),
                          TextSpan(text: "ION",style: TextStyle(color:Colors.limeAccent,fontSize:25)),
                        ]
                    ),),
                  RichText(

                    text:
                    const TextSpan(text: " ANIMAT",style: TextStyle(color:Colors.teal,fontSize:25),


                        children: [
                        TextSpan(text: "I",style: TextStyle(color:Colors.red,fontSize:28)),
                          TextSpan(text: "ON",style: TextStyle(color:Colors.teal,fontSize:25)),
                        ]
                    ),),
                  RichText(

                    text:  const TextSpan(text: "              I",style: TextStyle(color:Colors.blue,fontSize:25),


                        children: [TextSpan(text: "T",style: TextStyle(color:Colors.red,fontSize:28)),
                          TextSpan(text: "A-CS+",style: TextStyle(color:Colors.blue,fontSize:25)),
                        ]
                    ),),
                  RichText(






                    text:  const TextSpan(text: "      GAM",style: TextStyle(color:Colors.amber,fontSize:25),

                    children: [

                        TextSpan(text: "E",style: TextStyle(color:Colors.red,fontSize:28))
                        ],),),



                ],
              ),

            ],
          ),
          ),
        ),

    );
  }
}
