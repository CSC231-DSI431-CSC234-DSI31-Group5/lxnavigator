import 'package:flutter/material.dart';
import 'package:lxnavigator/src/presenters/auth.dart';
import 'package:lxnavigator/src/shared/constant.dart';
import 'package:lxnavigator/src/shared/loading.dart';

// "stful" then press tab to show class....extends... StatefulWidget{}
//  and class ...._State extends State<name of class from above> {}

class Register extends StatefulWidget {
  final Function toggleView;

  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

Widget showLogo() {
  return Container(
    width: 160.0, // Control the logo size
    height: 160.0,
    child: Image.asset('assets/images/logo/Logo1.png'),
  );
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

//text field state
  String email = '';
  String password = '';
  String error = '';
  String username = '';
  String firstname = '';
  String lastname = '';
  String occupation = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomPadding: false,
//            appBar: AppBar(
//                backgroundColor: Colors.brown[400],
//                elevation: 0.0,
//                title: Text('Sign up in to LX Navigator'),
//                actions: <Widget>[
//                  FlatButton.icon(
//                      icon: Icon(Icons.person),
//                      label: Text('Sign In'),
//                      onPressed: () {
//                        widget.toggleView();
//                      })
//                ]),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background/BG_Register.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 30,
                            alignment: Alignment(-15, 20),
                            onPressed: () {
                              widget.toggleView();
                            }),
                      ]),
                      showLogo(),
                      new Padding(
                        padding: new EdgeInsets.all(5.0),
                        child: new Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            helperText: 'Enter your e-mail account',
                            helperStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val.trim());
                          }),

                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            helperText: 'Enter your password',
                            helperStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                          obscureText: true,
                          validator: (val) => val.length < 6
                              ? 'Enter a password 6+ chars long'
                              : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),

                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Firstname',
                            labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            helperText: 'Enter your firstname',
                            helperStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an First name' : null,
                          onChanged: (val) {
                            setState(() => firstname = val);
                          }),
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Lastname',
                            labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            helperText: 'Enter your lastname',
                            helperStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an Last name' : null,
                          onChanged: (val) {
                            setState(() => lastname = val);
                          }),
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Occupation',
                            labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            helperText: 'Enter your occupation',
                            helperStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0,
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Enter an Occupation' : null,
                          onChanged: (val) {
                            setState(() => occupation = val);
                          }),
                      SizedBox(height: 10.0),
                      RaisedButton(
                          color: Colors.indigo,
                          child: Text(
                            '                           Register                           ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email,
                                      password,
                                      firstname,
                                      lastname,
                                      occupation);
                              if (result == null) {
                                setState(() {
                                  error = 'please supply a valid email';
                                  loading = false;
                                });
                              }
                            }
                          }),
                      SizedBox(height: 5.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
