import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget{
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
            'Login',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 4,
            height: 4,
          ),
          TextField(
            key: Key('username'),
            controller: TextEditingController(),
            textInputAction: TextInputAction.done,
            maxLength: 60,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username',
            ),
          ),
          SizedBox(
            width: 4,
            height: 4,
          ),
          TextField(
            key: Key('password'),
            maxLength: 10,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password',
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 3,
            ),
            child: RaisedButton(
              key: Key('login_button'),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: Colors.transparent),
              ),
              elevation: 0,
              child: Text("Login", style: TextStyle(fontSize: 25),),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: (){
                print("Login action");
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 3,
            ),
            child: RaisedButton(
              key: Key('register_link'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: Colors.transparent),
              ),
              elevation: 0,
              child: Text('Register', style: TextStyle(fontSize: 25),),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, '/register');
              },
            ),
          ),
        ],
      ),
    );
  }

}