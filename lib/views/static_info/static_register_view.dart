import 'package:flutter/material.dart';

class StaticRegisterView extends StatelessWidget{
  static String routeName = '/static-register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5dc),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Register Confirmation'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 4,
            height: 4,
          ),
          Text(
            'Confirmation:',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 2,
            height: 2,
          ),
          RichText(
            text: TextSpan(
              text: 'An email confirmation was sent to your email, please read the terms and condition to ',
              style: TextStyle(
                  color: Colors.blue, fontSize: 20
              ),
              //style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: 'activate your account',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 20)),
              ],
            ),
          ),
          SizedBox(
            width: 4,
            height: 4,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(color: Colors.transparent),
                ),
                elevation: 0,
                child: Text(
                  'Accept',
                  style: TextStyle(fontSize: 16),
                ),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}