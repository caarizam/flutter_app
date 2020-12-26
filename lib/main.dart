import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {

  var clicks = 0;

  void clicksIncrement(){
    setState(() {
      clicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(children: [
          Text("Clicks " + clicks.toString(),),
          RaisedButton(
            child: Text("Answer1", style: TextStyle(fontSize: 20),),
            onPressed: () => clicksIncrement(),
          )
        ],),
      ),
    );
  }
}
