import 'package:flutter/material.dart';
import 'package:social_media_recorder/audio_encoder_type.dart';
import 'package:social_media_recorder/screen/social_media_recorder.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 140, left: 4, right: 4),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 4, right: 4),
                  child: Row(
                    children: [
                      Expanded(child: Text("")),
                      SocialMediaRecorder(
                        initRecordPackageWidth: 50,
                        fullRecordPackageHeight: 50,
                        radius: BorderRadius.circular(360),
                        backGroundColor: Colors.deepPurple,
                        recordIconBackGroundColor: Colors.deepPurple,
                        recordIcon: Icon(Icons.mic, size: 25, color: Colors.white),
                        recordIconWhenLockBackGroundColor: Colors.deepPurple,
                        // maxRecordTimeInSecond: 5,
                        startRecording: () {
                          print("start");
                          // function called when start recording
                        },
                        stopRecording: (_time) {
                          print("stop");
                          // function called when stop recording, return the recording time
                        },
                        enableAnimation: true,
                        sendRequestFunction: (soundFile, _time) {
                          print("request");
                          //  print("the current path is ${soundFile.path}");
                        },
                        encode: AudioEncoderType.AAC,
                        // storeSoundRecoringPath: "/storage/emulated/0/new_record_sound",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
