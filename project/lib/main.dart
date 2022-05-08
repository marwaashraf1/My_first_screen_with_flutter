
import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'App',
      home: Home(),
    );
  }
}

void onPressed() {}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF006093),
      appBar: AppBar(
        title: Text(
          'Your Balance',
          style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 25,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.settings, color: Colors.white)),
        ],
        leading: Icon(Icons.apps_sharp, color: Colors.white),
        backgroundColor: Color(0xFF006093),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/MM.PNG'),
            Container(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('YOUR NAME',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            )),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('your-email@email.com',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
            ),
            Text('   '),
            Container(
              width: 300,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.blue,
                    width: 3,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'BALANCE',
                        style: TextStyle(
                          color: Colors.blue[200],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        "\$4,180.20",
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      FlatButton(
                        onPressed: onPressed,
                        child: Text(
                          'T R A N S F E R',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        colorBrightness: Brightness.dark,
                        color: Color(0xFF1c3b70),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
