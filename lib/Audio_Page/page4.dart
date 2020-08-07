import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text("Play Audio From Internet"),
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 10,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/sanket3122/Flutter_Class2/master/download.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.pause),
                    onPressed: () {},
                  ),
                  IconButton(
                      iconSize: 60,
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        final myplay = AudioCache();
                        myplay.play('http://onj3.andrelouis.com/phonetones/unzipped/Verizon-Droid_DNA/ringtones/air_candy.mp3');
                      }),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.stop),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
