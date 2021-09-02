import 'package:flutter/material.dart';
import 'package:flutter_app/views/welcome_view.dart';

class LoginView extends StatelessWidget {
  final _passFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  void _loginAction() {
    _form.currentState.save();

  }

  @override
  Widget build(BuildContext context) {
    var increments = 0;
    return Scaffold(
      backgroundColor: Color(0xfff5f5dc),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('LOGIN'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              TextFormField(
                key: Key('email'),
                decoration: InputDecoration(labelText: 'email'),
                textInputAction: TextInputAction.next,
                maxLength: 15,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passFocusNode);
                },
                validator: (value) => value.isEmpty ? 'Enter a value' : null,
              ),
              TextFormField(
                key: Key('password'),
                decoration: InputDecoration(labelText: 'password'),
                textInputAction: TextInputAction.next,
                obscureText: true,
                maxLength: 8,
                focusNode: _passFocusNode,
              ),
              ElevatedButton(
                key: Key('login_button'),
                child: Text("Login", style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                //color: Colors.black,
                //textColor: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      WelcomeView.routeName,
                  );
                },
              ),
              ElevatedButton(
                key: Key('register_btn'),
                child: Text("Register", style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,

                ),
                //color: Colors.black,
                //textColor: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context, '/register');
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
