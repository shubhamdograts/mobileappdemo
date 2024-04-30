import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepagecsreen/assessments_page.dart';

class AssessmentsPage extends StatelessWidget {
  const AssessmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessments Page'),
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AssessmentCard(),
              AssessmentCard(),
              AssessmentCard(),
              AssessmentCard(),
              AssessmentCard(),
            ],
          ),
        )
    );
  }
}

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/1949/36db/f548e5df794956c5efbaabbe0ad4352d?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DOErhMJwvkLoFDpC6XOQb1cUA65TEWwby5D6JQ-imw1J6cu2HgvVXg-XajSKHUyYtDF1Avua~gOSDDk52AhFHRp1GAgaQT289yqLfvfZRV6zPHoC0Qxe8Ys713LvSo3ZYSgO1~RMhfdu8ReGdhYAfJAQiao5SRut9G7uhdVLZIleIh01DD~3YoalCOTHWigGcYmS6fUx4Ck9~p4bP8n0M0USptk~1kShoU4o6ISsIbGhcU2-GrC-5O7VF93tooBdlqG0VbHoOzy6TR~egrdnkhIu8~E3PAdOhu5VO2JDKWa2QmYBv~FqZkJ5pkRlEN7o6VcX9uOwhi1by0ObmAXe0w__',
            ), height: 170, width: 170, fit: BoxFit.cover,),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Lean Startup method with Eric Ries Gorden ',style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ), maxLines: 2, overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 8,),
                  Text('11 attempts', style: TextStyle(
                    fontFamily: "Roboto",
                    // fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),),
                  SizedBox(height: 8, ),
                  Text("Progress", style: TextStyle(
                    fontFamily: "Roboto",
                    // fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),),
                  SizedBox(height: 18,),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
