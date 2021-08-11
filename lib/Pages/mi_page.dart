import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/IMG_7004.JPG"),
            ),
            Text(
              "Coded Studios",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 10.0,
              child: Divider(
                color: Colors.pink[100],
                thickness: 2.0,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone_rounded,
                  color: Colors.pink,
                ),
                title: Text(
                  "+233 0542460098",
                  style: TextStyle(
                    letterSpacing: 3.0,
                    color: Colors.pink[900],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: ListTile(
                  leading: Icon(
                    Icons.email_rounded,
                    color: Colors.pink,
                  ),
                  title: Text(
                    "codedspartant@gamil.com",
                    style: TextStyle(
                      letterSpacing: 3.0,
                      color: Colors.pink[900],
                    ),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
