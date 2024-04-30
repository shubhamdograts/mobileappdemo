import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperQuestion extends StatefulWidget {
  const StepperQuestion({super.key});

  @override
  State<StepperQuestion> createState() => _StepperQuestionState();
}

class _StepperQuestionState extends State<StepperQuestion> {
  @override
  Widget build(BuildContext context) {
    int _currentStep=0;

    String focus="The focus of this short questionnaire is to assess your empathy, that is, the capacity to understand or feel";


    List <Step> stepList() => [
      Step(
        isActive: _currentStep>=0,
        state: _currentStep<=0 ? StepState.editing : StepState.complete,
        title: Text('Answer 1'), content: Text('Answer 1'),),
      Step(
        isActive: _currentStep>=1,
        state: _currentStep<=1 ? StepState.editing : StepState.complete,
        title: Text('Answer 2'), content: Text('Answer 1'),),
      Step(
        isActive: _currentStep>=2,
        state: _currentStep<=2 ? StepState.editing : StepState.complete,
        title: Text('Answer 3'), content: Text('Answer 1'),),
      Step(
        isActive: _currentStep>=3,
        state: _currentStep<=3 ? StepState.editing : StepState.complete,
        title: Text('Answer 4'), content: Text('Answer 1'),),
    ];
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
                const Text("Question 5/10", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),
                const SizedBox(height: 10,),
                const LinearProgressIndicator(
                  value: 0.5,
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
                Stepper(
                  steps: stepList(),
                  currentStep: _currentStep,
                  onStepContinue: () {
                      if( _currentStep < (stepList().length-1)) {
                        setState(() {
                          _currentStep+=1;
                          print('inreasing');
                        });
                      }
                  },
                  onStepCancel: () {
                    if(_currentStep > 0) {
                      setState(() {
                        _currentStep-=1;
                      });
                    }
                  },
                ),
                const SizedBox(height: 8,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        // updateBack();
                        // questionBack();
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
                            // update();
                            // question();
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
