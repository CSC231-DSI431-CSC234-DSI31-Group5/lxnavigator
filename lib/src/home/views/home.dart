import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/mapbox/map.dart';
import 'package:lxnavigator/src/app/views/indoormap/indoormap.dart';
import 'package:lxnavigator/src/aunthenticate/sign_in.dart';
// import 'package:lxnavigator/src/models/user.dart';

class Home extends StatelessWidget {
  Widget showLogo() {
    return Container(
      width: 225.0, // Control the logo size
      height: 225.0,
      child: Image.asset('assets/images/logo/Logo1.png'),
    );
  }

  // final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      drawer: DrawerCode(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/BG_Home.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
//              Row(children: [
//                IconButton(
//                    icon: Icon(Icons.menu),
//                    iconSize: 40,
//                    alignment: Alignment(-25, 20),
//                    onPressed: () async {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => DrawerCode()));
//                    }),
//              ]),
              SizedBox(height: 15.0),
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
              SizedBox(height: 170.0),
              new SizedBox(
                height: 50,
                child: new RaisedButton(
                    color: Colors.yellow[800],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 30.0,
                        ), // icon

                        Text(
                          "Map",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ), // text
                      ],
                    ),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyMap()));
                    }),
              ),
              new SizedBox(
                height: 50,
                child: new RaisedButton(
                    color: Colors.orange[800],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          color: Colors.white,
                          size: 30.0,
                        ), // icon

                        Text(
                          "Floor Plan",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ), // text
                      ],
                    ),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IndoorMap()));
                    }),
              ),
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
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('users')
          .where("uid", isEqualTo: user.uid)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Text('Loading...');
          default:
            return Drawer(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    DrawerHeader(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 50.0),
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/avatar/profile2.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(5.0),
                      child: new Text(
                        '    Name',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Column(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return new ListTile(
                          title: Text(
                            document['firstname'] +
                                " " +
                                document['lastname'] +
                                "\n\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                    )),
                    new Padding(
                      padding: new EdgeInsets.all(5.0),
                      child: new Text(
                        '    Email',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Column(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return new ListTile(
                          title: Text(
                            document['email'] + "\n\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 17.0),
                          ),
                        );
                      }).toList(),
                    )),
                    new Padding(
                      padding: new EdgeInsets.all(5.0),
                      child: new Text(
                        '    Occupation',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Column(
                      children: snapshot.data.documents
                          .map((DocumentSnapshot document) {
                        return new ListTile(
                          title: Text(
                            document['occupation'] + "\n\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                    )),
                    SizedBox(height: 140.0),
                    Container(
                      child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 0.0),
                          color: Colors.orange[400],
                          child: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () async {
                            if (_auth.signOut() != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()),
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}
