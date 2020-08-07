import 'package:flutter/material.dart';
import 'package:music_vdo/Video_page/page6.dart';
import 'package:music_vdo/Video_page/page7.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/image/you3.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
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
                        'Play Video From Assets',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page6()),
                        );
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
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
                        'Play Video From Internet',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page7()),
                        );
                        // Navigate to second route when tapped.
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 50,
                    margin: const EdgeInsets.all(10.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Navigate back to first route when tapped.
                        },
                        icon: Icon(Icons.arrow_back),
                        iconSize: 50.0,
                        color: Colors.red[800]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
