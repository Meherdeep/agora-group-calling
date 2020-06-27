import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class toolbar extends StatefulWidget {
  @override
  _toolbarState createState() => _toolbarState();
}

class _toolbarState extends State<toolbar> {
  bool muted = false;
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 350,
        color: Colors.grey,
        child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      MaterialButton(onPressed: onToggleMuteButton,
      child: Icon(
        muted ? Icons.mic_off : Icons.mic,
        color: muted ? Colors.black : Colors.blue,
      ),
      shape: CircleBorder(),
      height: 30,
      elevation: 2,
      color: muted ? Colors.blue : Colors.white,
      padding: EdgeInsets.all(7),
      ),
      MaterialButton(onPressed: onCallDisconnect,
      child: Icon(Icons.call_end,
      color: Colors.red,
      ),
      shape: CircleBorder(),
      height: 30,
      elevation: 2,
      color: Colors.white,
      padding: EdgeInsets.all(7),
      ),
      MaterialButton(onPressed: onToggleSwitchCameraButton,
      child: Icon(Icons.switch_camera, color: Colors.blue,),
      shape: CircleBorder(),
      height: 30,
      elevation: 2,
      color: Colors.white,
      padding: EdgeInsets.all(7),
      ),
    ],

        ),
        
      );
  }
  void onTapSettings(){
    setState(() {
      hide = !hide;
    });
  }
  void onToggleMuteButton(){
    setState(() {
      muted = !muted;
    });
    //AgoraRtcEngine.muteLocalAudioStream(muted);
  }
  void onToggleSwitchCameraButton(){
      AgoraRtcEngine.switchCamera();
    }
    void onCallDisconnect(){
      Navigator.pop(context);
    }
}