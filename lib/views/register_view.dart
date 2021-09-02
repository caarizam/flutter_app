import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static String routeName = '/register';

  final usernameController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();

  String validatePassword(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('register_screen'),
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
            controller: usernameController,
            textInputAction: TextInputAction.done,
            maxLength: 15,
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
            controller: passController,
            textInputAction: TextInputAction.done,
            maxLength: 8,
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
          TextFormField(
            key: Key('confirm'),
            controller: confirmController,
            textInputAction: TextInputAction.done,
            maxLength: 8,
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
            child: ElevatedButton(
              key: Key('register_action'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,

              ),
              //padding: EdgeInsets.symmetric(
                //horizontal: 16,
                //vertical: 12,
              //),
              //shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(6),
                //side: BorderSide(color: Colors.transparent),
              //),
              //elevation: 0,
              child: Text(
                'Send',
                style: TextStyle(fontSize: 18),
              ),
              //color: Colors.black,
              //textColor: Colors.white,
              onPressed: () {
                //Navigator.pop(context);
                if(usernameController.text.isEmpty || passController.text.isEmpty || confirmController.text.isEmpty){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text('The fields can\'t be empty.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }else if(passController.text != confirmController.text){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text('The password and the confirm password should be the same.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }else{
                  Navigator.pushNamed(context, '/static-register');
                }

              },
            ),
          ),
        ],
      ),
    );
  }
}
