import 'package:flutter/material.dart';
import 'package:lxnavigator/src/services/auth.dart';
import 'package:lxnavigator/src/app/view/mapbox/map.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
              body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                child: Column(
                  children: <Widget>[
              RaisedButton(
                        color: Colors.pink[400],
                        child: Text(
                          'map',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                         Navigator.push(context,
                         MaterialPageRoute(builder: (context) => MyMap())
                          );
                        }),
                    
                  ],
                ),
              ),
            ),

        );
  }
}



