import 'dart:io';
import 'dart:js_interop';

import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:open_file/open_file.dart';

class AudioPage extends StatefulWidget {
  AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // audioPlayer.onAudioPositionChanged.listen((newPosition) {
    //   setState(() {
    //     position= newPosition;
    //   });
    // });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes);
    final seconds = twoDigits(duration.inSeconds);
    return [
      if(duration.inHours > 0) hours, minutes, seconds].join(':');
  }


  @override
  Widget build(BuildContext context) {
    void submitClick() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text('Assignment has been submitted'),
            );
          });
    }


    String TextLarge = 'Extraterrestrial Elegance Beyond the Bounds of Earthly Beauty';
    String content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id';
    String assignment = 'Assignment : Create and upload a Video';
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Text('Practice', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("notification");
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                value: 0.6,
                color: Color(0xff84E197),
                strokeWidth: 6,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 112.0),
              child: Container(
                height: 280, width: 343,
                decoration: BoxDecoration(
                  // color: Color(0xffD0BCFF),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_3.png'),
                        fit: BoxFit.cover)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(formatTime(position)),
                Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioPlayer.seek(position);
                      await audioPlayer.resume();
                    }),
                Text(formatTime(duration - position)),
              ],
            ),
            Container(
              height: 60, width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.fast_rewind, size: 36,),),

                  SizedBox(width: 20,),
                  IconButton(
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                      onPressed: () async {
                        // playSound();
                        if (isPlaying) {
                          await audioPlayer.pause();
                        } else {
                          await audioPlayer.resume();
                        }
                      }),


                  SizedBox(width: 20,),
                  IconButton(onPressed: () {},
                    icon: Icon(Icons.fast_forward, size: 36,),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TextLarge,
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold
                    ),
                  ),
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
                  Text('Instruction', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 10,),
                  Text(content,
                    // maxLines: 3,
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),),
                  SizedBox(height: 30,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: 30,),
                  Text(assignment, style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 10,),
                  Text(content,
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),),
                  SizedBox(height: 32,),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles();
                        if (result == null) return;

                        // final file=result.files.first;
                        // openFile(file);
                      },
                      label: Text('Upload',
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.white),
                      ),
                      icon: Icon(Icons.upload),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        submitClick(
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AudioPage()));
                        );
                      },
                      child: Text(
                        'Submit', style: TextStyle(color: Colors.grey),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.grey[100]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    // final player=AudioCache(prefix: 'assets/');
    // final url=await player.load('audio/nothing.mp3');
    // audioPlayer.setSourceUrl(url.path, isLocal= true);

    // String url='http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3';
    // audioPlayer.setSourceUrl(url);

    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = File(result.files.single.path!);
      audioPlayer.setSourceUrl(file.path);
    }
  }
}

  // void openFile(PlatformFile file) {}
  //   OpenFile.open(file.path!);
  // }


//   Future <void> playSound () async {
//     // String audioPath= 'assets/audio/nothing.mp3';
//     await player.play(AssetSource('audio/nothing.mp3'));
//   }
// }
