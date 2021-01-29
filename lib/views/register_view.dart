import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5dc),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('REGISTER'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 4,
            height: 4,
          ),
          Text(
            'Please, enter the information',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 4,
            height: 4,
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
            controller: TextEditingController(),
            textInputAction: TextInputAction.done,
            maxLength: 60,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password',
            ),
          ),
          SizedBox(
            width: 4,
            height: 4,
          ),
          TextField(
            key: Key('confirm_pass'),
            controller: TextEditingController(),
            textInputAction: TextInputAction.done,
            maxLength: 60,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'confirm password',
            ),
          ),
          ButtonTheme(
            //width: double.infinity,
            //margin: EdgeInsets.all(8),
            minWidth: MediaQuery.of(context).size.width,
            child: RaisedButton(
              key: Key('register_action'),
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
                'Send',
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                //Navigator.pop(context);
                Navigator.pushNamed(context, '/static-register');
              },
            ),
          ),
        ],
      ),
    );
  }
}
