// import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/aunthenticate/register.dart';
import 'package:lxnavigator/src/aunthenticate/reset.dart';
import 'package:lxnavigator/src/home/views/home.dart';
import 'package:lxnavigator/src/presenters/auth.dart';

// import 'package:lxnavigator/src/shared/constant.dart';
import 'package:lxnavigator/src/shared/loading.dart';
// import 'register.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

Widget showLogo() {
  return Container(
    width: 160.0, // Control the logo size
    height: 160.0,
    child: Image.asset('assets/images/logo/Logo1.png'),
  );
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

//text field state

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
//            appBar: AppBar(
//                backgroundColor: Colors.brown[400],
//                elevation: 0.0,
//                title: Text('Sign in to LX Navigator'),
//                actions: <Widget>[
//                  FlatButton.icon(
//                      icon: Icon(Icons.person),
//                      label: Text('Register'),
//                      onPressed: () {
//                        widget.toggleView();
//                      })
//                ]),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background/BG_Login.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 70.0),
                      showLogo(),
                      new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: new Text(
                          'LX Navigator',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val.trim());
                          }),
                      SizedBox(height: 10.0),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                          obscureText: true,
                          validator: (val) => val.length < 6
                              ? 'Enter a password 6+ chars long'
                              : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),
                      SizedBox(height: 10.0),
                      RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            '                           Sign In                           ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result =
                                  await _auth.SignInWithEmailAndPassword(
                                      email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      'could not sign in with those credentials';
                                  loading = false;
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                              }
                            }
                          }),
                      SizedBox(height: 5.0),
                      RaisedButton(
                          color: Colors.indigo,
                          child: Text(
                            '                          Register                          ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            // widget.toggleView();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            );
                          }),
                      FlatButton(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Reset()),
                            );
                          }),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
