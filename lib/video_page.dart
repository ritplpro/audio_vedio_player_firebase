import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {


  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  String murl="https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
  VideoPlayerController? mcontroller;
  late Future<void> intializer;


  @override
  void initState() {
    super.initState();
    mcontroller=VideoPlayerController.networkUrl(Uri.parse(murl));
    intializer=mcontroller!.initialize();
    mcontroller!.addListener((){

      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("video player"),
      ),
      body: Container(),
    );
  }
}
