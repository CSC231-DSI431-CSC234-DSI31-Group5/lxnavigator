import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/mapbox/map.dart';
import 'package:lxnavigator/src/app/views/indoormap/indoormap.dart';

class Home extends StatelessWidget {
  // final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('LX Navigator'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
      ),
      drawer: DrawerCode(),
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
                        MaterialPageRoute(builder: (context) => MyMap()));
                  }),
              RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Indoor Map',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IndoorMap()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerCode extends StatefulWidget {
  @override
  _DrawerCodeState createState() => _DrawerCodeState();
}

class _DrawerCodeState extends State<DrawerCode> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    user = await _auth.currentUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/avatar/profile.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            // leading: Icon(Icons.person_outline),
            title: Text("Name \n\n Sakdipat Ontoum \n\n "),
          ),
          ListTile(
            // leading: Icon(Icons.settings_applications),
            title: Text("Email \n\n ${user?.email} \n\n "),
          ),
          ListTile(
            // leading: Icon(Icons.arrow_back),
            title: Text("Occupation \n\n Student \n\n"),
          ),
          RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              color: Colors.orange[400],
              child: Text(
                'Sign Out',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                await _auth.signOut();
              }),
        ],
      ),
    );
  }
}
