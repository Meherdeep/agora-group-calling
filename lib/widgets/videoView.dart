import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';

class VideoView extends StatefulWidget {
  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  static final users = <int>[];
  
  List<Widget> listView(){
    final List<AgoraRenderWidget> list = [
      AgoraRenderWidget(0, local: true, preview: true),
    ];
    users.forEach((int uid) => list.add(AgoraRenderWidget(uid)));
    return list;
  }

  Widget _videoView(view) {
    return Container(
      child: view
    );
  }

  /// Video view row wrapper
  Widget _expandedVideoRow(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Row(
      children: wrappedViews,
    );
  }
  Widget _userScreen(List<Widget> views) {
    final wrappedViews = views.map<Widget>(_videoView).toList();
    return Container(
      height: 80,
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: wrappedViews,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final view = listView();
    switch (view.length) {
      case 1:
      return Container(
        child: Expanded(
          child: Column(children: <Widget>[
            _videoView(view[0]),
          ],),
        ),
      );
      case 2: 
      return Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                _userScreen([view[0]]),
                _expandedVideoRow([view[1]]),
              ],
            )
          ],
        ),
      );
      case 3:
      return Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                _userScreen([view[0]]),
                _expandedVideoRow([view[1]]),
                _expandedVideoRow([view[2]]),
              ],
            )
          ],
        ),
      );
      case 4:
      return Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                _userScreen([view[0]]),
                _expandedVideoRow([view[1]]),
                _expandedVideoRow([view[2]]),
                _expandedVideoRow([view[3]]),
              ],
            )
          ],
        ),
      ); 
    }
    return Container();
  }
}