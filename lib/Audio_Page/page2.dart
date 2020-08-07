import 'package:flutter/material.dart';
import 'page3.dart';
import 'page4.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.red);
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        //backgroundImage:,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/image/download (1).jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        // color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 220,
                      height: 50,
                      margin: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        textColor: Colors.white,
                        color: Colors.red[600],
                        child: Text(
                          'Play Audio From Assets',
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocalAudio()),
                          );
                          // Navigate to second route when tapped.
                        },
                      ),
                    ),
                    Container(
                      width: 220,
                      height: 50,
                      //color: Colors.amber,
                      margin: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        textColor: Colors.white,
                        color: Colors.red[600],
                        child: Text(
                          'Play Audio From Internet',
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page4()),
                          );
                          // Navigate to second route when tapped.
                        },
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 50,
                    // color: Colors.amber,
                    alignment: Alignment.bottomCenter,
                    //margin: EdgeInsets.all(40),
                    // padding: EdgeInsets.all(),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // Navigate back to first route when tapped.
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 50.0,
                      color: Colors.white,
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
}
