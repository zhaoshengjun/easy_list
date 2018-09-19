import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email;
  String _password;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'eMail'),
                onChanged: (String value) {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                onChanged: (String value) {},
              ),
              SwitchListTile(
                title: Text('Accept Terms'),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          )),
    );
  }
}
