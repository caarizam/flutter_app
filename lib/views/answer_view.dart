import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: RaisedButton(
        child: Text("Accept", style: TextStyle(fontSize: 20),),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () => selectHandler,
      ),
    );
  }

}
