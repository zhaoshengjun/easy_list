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
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage('assets/background.jpg'))),
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'eMail', filled: true, fillColor: Colors.white),
                onChanged: (String value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Accept Terms'),
                value: _acceptTerms,
                onChanged: (bool value) {
                  setState(() {
                    _acceptTerms = value;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text('Login'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  print(_email);
                  print(_password);
                  print(_acceptTerms);
                  Navigator.pushReplacementNamed(context, '/products');
                },
              ),
            ],
          )),
    );
  }
}
