import 'package:flutter/material.dart';
import '../Audio_Page/page2.dart';
import '../Video_page/page5.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text('MEDIA PLAYER'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   color: Colors.black,
        //   image: DecorationImage(
        //     image: AssetImage('assets/image/sanket.jpg'),
        //     fit: BoxFit.,
        //   ),
        // ),
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 250,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.audiotrack,
                        size: 30.0,
                        color: Colors.red[600],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      // margin: const EdgeInsets.all(10.0),
                      MaterialButton(
                        splashColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.red[800],
                        child: Text(
                          '         Music           ',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                          // Navigate to second route when tapped.
                        },
                      ),
                    ],
                  )),
              Container(
                  //  color: Colors.amber,
                  width: 250,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.ondemand_video,
                        size: 30.0,
                        color: Colors.red[600],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      // margin: const EdgeInsets.all(10.0),
                      MaterialButton(
                        splashColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.red[800],
                        child: Text(
                          '          Video           ',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page5()),
                          );
                          // Navigate to second route when tapped.
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
