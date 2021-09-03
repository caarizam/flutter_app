import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static String routeName = '/register';

  final _passFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _form,
          child: ListView(
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
              TextFormField(
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
              TextFormField(
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
              ElevatedButton(
                key: Key('register_action'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                ),
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  if(usernameController.text.isEmpty || passController.text.isEmpty || confirmController.text.isEmpty){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
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
              ElevatedButton(
                key: Key('cancel_action'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}
