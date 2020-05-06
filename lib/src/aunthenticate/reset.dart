import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/aunthenticate/sign_in.dart';
import 'package:lxnavigator/src/presenters/auth.dart';
import 'package:lxnavigator/src/shared/loading.dart';

class Reset extends StatefulWidget {
  final Function toggleView;

  Reset({this.toggleView});

  @override
  _ResetState createState() => _ResetState();
}

Widget showLogo() {
  return Container(
    width: 160.0, // Control the logo size
    height: 160.0,
    child: Image.asset('assets/images/logo/Logo1.png'),
  );
}

class _ResetState extends State<Reset> {
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
            resizeToAvoidBottomPadding: false,
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
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background/BG_Login.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Row(children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 30,
                            alignment: Alignment(-15, 20),
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SignIn()),
                              );
                            }),
                      ]),
                      SizedBox(height: 50.0),
                      showLogo(),
                      new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: new Text(
                          'Reset Password',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20.0),
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
                            setState(() => email = val);
                          }),
                      SizedBox(height: 20.0),
                      FlatButton(
                          color: Colors.indigo,
                          child: Text(
                            '       reset       ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            _auth.sendPasswordResetEmail(email);
                            if (email != null) {
                              Flushbar(
                                title: 'Reset Password',
                                message:
                                    'We send the detail to $email successfully',
                                icon: Icon(
                                  Icons.info_outline,
                                  size: 28,
                                  color: Colors.blue.shade300,
                                ),
                                leftBarIndicatorColor: Colors.blue.shade300,
                                duration: Duration(seconds: 3),
                              ).show(context);
                            }
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
