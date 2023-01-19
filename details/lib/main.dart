import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myapp1());
}

class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}) : super(key: key);
  final String n2 = "Create Account ", n1 = "Sign in";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Flutter Demo")),
          body: Center(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: n1,
                              style: GoogleFonts.amita(
                                  fontSize: 23,
                                  color: Colors.blueGrey,
                                  shadows: [
                                    const Shadow(
                                        color: Colors.black45,
                                        blurRadius: 18,
                                        offset: Offset(3, 3))
                                  ]),
                              children: [
                            TextSpan(
                              text: " |",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.redAccent.shade200,
                                  fontWeight: FontWeight.w400,
                                  shadows: []),
                            ),
                            TextSpan(
                              text: " $n2",
                              style: const TextStyle(
                                  fontSize: 23, color: Colors.deepPurple),
                            ),
                          ])),
                    ],
                  ),
                  Column(
                    cr
                    children: [
                      Text.rich(
                        TextSpan(
                            text: "Terms And Conditions ",
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: Colors.black45)),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
