import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepagecsreen/Assessments/take_assessments.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String content="The focus of this short questionnaire is to assess your empathy, that is, the capacity to understand or feel what another person is experiencing from within their frame of reference, that is, the capacity to place oneself in another's position. It will take about 5-10 minutes of your time to complete the questionnaire.";

    return AssessmentScreenReusable(content: content);
  }
}

class AssessmentScreenReusable extends StatelessWidget {
  const AssessmentScreenReusable({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 58),
              child: Text('Assessment', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 32,
                width: 32,
                child: CircularProgressIndicator(
                  value: 0.5,
                  color: Color(0xff84E197),
                ),
              ),
            ),

          ],
        ),
      ),
      body:
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('images/assessment_front.png')),
                  const SizedBox(height: 10,),
                  const Text('Empathy Self Assessment', style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                  ),),
                  const SizedBox(height: 10,),
                  Text(content, style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),)
                ],
              ),
              Column(
                children: [
                  const Text("Your 1st attempts", style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),),
                  const SizedBox(height: 16,),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TakeAssessments()));
                        },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xff4F378B))),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Lets begin', style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),),
                        ),
                    ),
                  ),
                  const SizedBox(height: 50,)

                ],
              ),
            ],
          ),
        )
    );
  }
}
