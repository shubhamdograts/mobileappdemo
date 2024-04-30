import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class GenerateCertificate extends StatelessWidget {
  const GenerateCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 8),
          child: Text('Really Long Course Name but not overflow',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Roboto",
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 15),
        child: Container(
            width: 360,
            height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: <Widget> [
                  Container(
                  height: 223,
                  width: 360,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEFDDAF), width: 3),
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_2.png'), fit: BoxFit.fitWidth
                    ),
                  ),
                ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 107, left: 125, top: 104, bottom: 104),
                      child: Text('', style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),),
                    ),
                  )
                ]
              ), SizedBox(height: 16,),
              Container(
                alignment: Alignment.center,
                height: 36,
                width: 112,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Text('Download', style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 11, color: Color(0xff4F378B)
                        ),),
                        SizedBox(width: 8,),
                        Icon(Icons.download,size: 18, color: Color(0xff4F378B),),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  border: Border.all(color: Color(0xff4F378B))
                ),
              ),
              // Image(image: AssetImage('assets/images/img_2.png'))
            ],
          )
        ),
      ),
    );
  }
}
