import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});


  @override
  Widget build(BuildContext context) {

    String content='Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id.Duis aute irure dolor in reprehenderit. ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id.Duis aute irure dolor in reprehenderit...More';
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice', style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("notification");
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircularProgressIndicator(
                value: 0.6,
                color: Color(0xff84E197),
                strokeWidth: 8,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Design System for Android', style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        letterSpacing: 0.2,
                      ), ),
                      SizedBox(height: 16,),
                      Text('Topic 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                      SizedBox(height: 10,),
                      Text(content, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                      SizedBox(height: 21,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24,),
                    Text('Description', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      overflow: TextOverflow.fade,
                    ), maxLines: 3),
                    SizedBox(height: 10,),
                    Text(content,
                      // maxLines: 3,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),),
                    SizedBox(height: 20,),
                    Text('Instruction', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 10,),
                    Text(content,
                      // maxLines: 3,
                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),),
                    SizedBox(height: 30,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
