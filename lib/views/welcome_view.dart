import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  static String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5dc),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('WELCOME'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 4,
            height: 4,
          ),
          Text(
            'Welcome user',
            style: TextStyle(
                fontSize: 33, fontWeight: FontWeight.bold, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 4,
            height: 4,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 3,
            ),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: Colors.transparent),
              ),
              elevation: 0,
              child: Text(
                "Show SnackBar",
                style: TextStyle(fontSize: 25),
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {

              },
            ),
          )
        ],
      ),
    );
  }
}
