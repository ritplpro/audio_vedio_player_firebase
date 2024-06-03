import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';


class AudioPage extends StatefulWidget {


  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  AudioPlayer?  audioPlayer;
  Duration? totalduration=Duration.zero;
  Duration currentpostion=Duration.zero;
  Duration bufferpostion=Duration.zero;
  Duration nextpostion=Duration(seconds: 5+1);

  @override
  void initState() {
    super.initState();
    setupAudio();
  }

  void setupAudio()async{
    String audiosrc="https://raag.fm/files/mp3/128/Hindi-Singles/23967/Kyaa%20Baat%20Haii%202.0%20-%20(Raag.Fm).mp3";
    audioPlayer=AudioPlayer();
    totalduration=await audioPlayer!.setUrl(audiosrc);
    audioPlayer!.play();

    audioPlayer!.positionStream.listen((valuee){
      currentpostion=valuee;
      setState(() {

      });

    });


    audioPlayer!.bufferedPositionStream.listen((value){
      bufferpostion=value;
      setState(() {

      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('av player'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProgressBar(bufferedBarColor: Colors.grey,
              onSeek: (seekToValue){
            audioPlayer!.seek(seekToValue);
              },
              progress:currentpostion,buffered: bufferpostion, total: totalduration!),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.skip_previous)),
              SizedBox(width: 30,),
              IconButton(onPressed: (){
                if(audioPlayer!.playing){
                  audioPlayer!.pause();
                }else{
                  audioPlayer!.play();
                }
              }, icon:Icon(audioPlayer!.playing ? Icons.pause : Icons.play_arrow_sharp)),
              SizedBox(width: 30,),
              IconButton(onPressed: (){
                audioPlayer!.seek(nextpostion);
              }, icon:Icon(Icons.skip_next))

            ],
          ),
        ],
      ),
    );
  }
}

