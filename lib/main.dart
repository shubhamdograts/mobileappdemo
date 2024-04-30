import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepagecsreen/Assessments/Questions/stepper_widget.dart';
import 'package:homepagecsreen/practices_audio_page.dart';
import 'package:homepagecsreen/Assessments/take_assessments.dart';
import 'practices_audio_page.dart';
import 'home_page.dart';
import 'recommendation_page.dart';
import 'generate_certificate.dart';
import 'Assessments/assessment_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior()
          .copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      //
      home: StepperQuestion(),
    );
  }
}
