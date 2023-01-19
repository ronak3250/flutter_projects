import 'package:flutter/material.dart';
import 'package:shape/GameOver.dart';
import 'package:shape/HomeScreen.dart';
import 'package:shape/quiz.dart';

import 'Colorpicker.dart';
import 'Lost.dart';
import 'OtpGenerator.dart';

import 'Result.dart';
import 'cal.dart';


void main() {
  runApp( const QuizScreen());

}

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {



  @override
  Widget build(BuildContext context) {




    return MaterialApp(


      home: const Homescreen(),
    );
  }
}
