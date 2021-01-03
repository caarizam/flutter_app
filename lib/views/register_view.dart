import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Accept", style: TextStyle(fontSize: 20),),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}