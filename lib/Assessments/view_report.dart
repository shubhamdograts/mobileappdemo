import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewReport extends StatelessWidget {
  const ViewReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child:
            Column(
              children: [
                CircularProgressIndicator(

                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.arrow_left_right),
                    Text('Qualified'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
