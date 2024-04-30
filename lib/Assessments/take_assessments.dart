import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'assessment_screen.dart';

class TakeAssessments extends StatefulWidget {
  const TakeAssessments({super.key});


  @override
  State<TakeAssessments> createState() => _TakeAssessmentsState();
}

List<String > options= ['option1', 'option2', 'option3', 'option4'];


class _TakeAssessmentsState extends State<TakeAssessments> {
  String currentOption=options[0];
  double mover=0.1;
  int questionNumber=1;

  void update() {
    setState(() {
      mover=mover+0.1;
    });
  }

  void question() {
    setState(() {
      if(questionNumber==10) {
        showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Reached the maximum limit, Wanna retake the test', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),),
            ));
      } else {
        questionNumber=questionNumber+1;
      }
    });
  }


  void updateBack() {
    setState(() {
      if(mover<=0.2) {
      } else
         {
           mover=mover-0.1;
         }
    });
  }

  void questionBack() {
    setState(() {
      if(questionNumber==1) {
      } else {
        questionNumber=questionNumber-1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String focus="The focus of this short questionnaire is to assess your empathy, that is, the capacity to understand or feel";
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Empathy Self Assessment', style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Question $questionNumber /10", style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                const SizedBox(height: 10,),
                LinearProgressIndicator(
                  value: mover,
                  color: Colors.greenAccent,
                ),
                const SizedBox(height: 20,),
                const Text('I can quickly Explain solutions to any difficulties I face.*', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: "Roboto",
                ),),
                const SizedBox(height: 10,),
                Text(focus, style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: "Roboto",
                ),),
                const SizedBox(height: 10,),
                const Text('helper text', style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: "Roboto",
                ),),
                const SizedBox(height: 16,),
                ListTile(
                  title: const Text('Strongly Disagree'),
                  leading: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      onChanged: (value) => {
                        setState(() {
                      currentOption= value.toString();
                        })
                      }
                  ),
                ),
                const SizedBox(height: 8,),
                ListTile(
                  title: const Text('Disagree'),
                  leading: Radio(
                      value: options[1],
                      groupValue: currentOption,
                      onChanged: (value) => {
                        setState(() {
                          currentOption= value.toString();
                        })
                      }
                  ),
                ),
                const SizedBox(height: 8,),
                ListTile(
                  title: const Text('Strongly Agree'),
                  leading: Radio(
                      value: options[2],
                      groupValue: currentOption,
                      onChanged: (value) => {
                        setState(() {
                          currentOption= value.toString();
                        })
                      }
                  ),
                ),
                const SizedBox(height: 8,),
                ListTile(
                  title: const Text('Agree'),
                  leading: Radio(
                      value: options[3],
                      groupValue: currentOption,
                      onChanged: (value) => {
                        setState(() {
                          currentOption= value.toString();
                        })
                      }
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        updateBack();
                        questionBack();
                      },
                      child: const Text('Previous', style: TextStyle(
                        color: Color(0xff4F378B),
                        fontFamily: "Roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(100),),
                        border: Border.all(color: const Color(0xff330F4B))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
                      child:
                      TextButton(
                          onPressed: () {
                              update();
                              question();
                          },
                          child: const Row(
                            children: [
                              Text('Next', style: TextStyle(
                                color: Color(0xff4F378B),
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 8,),
                              Icon(CupertinoIcons.chevron_right, color: Color(0xff330F4B),)
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}

