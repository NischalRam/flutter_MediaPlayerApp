import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

typedef void OnError(Exception exception);

class LocalAudio extends StatefulWidget {
  @override
  _LocalAudio createState() => _LocalAudio();
}

class _LocalAudio extends State<LocalAudio> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  BoxDecoration mybox() {
    return BoxDecoration(border: Border.all(width: 2, color: Colors.red[500]));
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: children
                .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(
        width: 150,
        height: 45,
        child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text(txt),
            color: Colors.red[600],
            textColor: Colors.black,
            onPressed: onPressed),
      ),
    );
  }

  Widget slider() {
    return Container(
      // decoration: BoxDecoration(),
      padding: EdgeInsets.all(6.0),
      color: Colors.red[700],
      width: double.infinity,
      child: Slider(
          activeColor: Colors.grey[600],
          inactiveColor: Colors.white,
          value: _position.inSeconds.toDouble(),
          min: 0.0,
          max: _duration.inSeconds.toDouble(),
          onChanged: (double value) {
            setState(() {
              seekToSecond(value.toInt());
              value = value;
            });
          }),
    );
  }

  Widget LocalAudio() {
    return _tab([
      slider(),
      _btn('Play', () => audioCache.play('Audio/on_my_way.mp3')),
      _btn('Pause', () => advancedPlayer.pause()),
      _btn('Stop', () => advancedPlayer.stop()),
    ]);
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.red[600],
          title: Text('Play Audio From Assets'),
        ),
        body: Container(
          decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/image/song.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
         // margin: EdgeInsets.all(10.0),
         // color: Colors.black,
          child: TabBarView(
            children: [
              LocalAudio(),
            ],
          ),
        ),
      ),
    );
  }
}
