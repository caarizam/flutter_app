import 'package:flutter/material.dart';
import 'package:flutter_app/views/answer_view.dart';
import 'package:flutter_app/views/question_view.dart';
import 'package:flutter_app/views/register_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  var _clicks = 0;

  void _clicksIncrement(){
    setState(() {
      _clicks++;
    });
    print(_clicks);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),

        ),
        body: Column(children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter a value",
            ),
          ),
          Answer(
              _clicksIncrement
          ),
          Question(
            "This is a question:",
          ),
          RaisedButton(
            child: Text("Register", style: TextStyle(fontSize: 20),),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return RegisterView();
                  })
              );
            },
          ),
        ],),
      ),
    );
  }
}
