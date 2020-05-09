import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/indoormap/activity/activityOne.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEight.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEleven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFive.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFour.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothNine.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSeven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSix.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTen.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothThree.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTwo.dart';
import 'package:lxnavigator/src/home/views/home.dart';
import 'package:photo_view/photo_view.dart';

//VR AR MR booth
class BoothOne extends StatefulWidget {
  @override
  _BoothOneState createState() => _BoothOneState();
}

class _BoothOneState extends State<BoothOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            // widget.toggleView();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        title: Text(
          'Floor Plan',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 3.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    child: ClipRect(
                      child: PhotoView(
                        imageProvider: const AssetImage(
                            "assets/images/indoormap/booth/VR.png"),
                        maxScale: PhotoViewComputedScale.covered * 2.0,
                        minScale: PhotoViewComputedScale.contained * 0.8,
                        initialScale: PhotoViewComputedScale.covered,
                      ),
                    ),
                  ),

                  //column 0
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  ),

                  //column 1
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5.0),
                        ButtonTheme(
                          minWidth: 100,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.yellow[900],
                                child: Text(
                                  'VR AR MR',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothOne()));
                                }),
                          ),
                        ),
                        SizedBox(width: 7.0),
                        ButtonTheme(
                          minWidth: 100,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.yellow[600],
                                child: Text(
                                  'WORKSHOP',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothTwo()));
                                }),
                          ),
                        ),
                        SizedBox(width: 7.0),
                        ButtonTheme(
                          minWidth: 150,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.yellow[600],
                                child: Text(
                                  'DESIGN STUDIES',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothThree()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //column 2
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5.0),
                        ButtonTheme(
                          minWidth: 220,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.yellow[600],
                                child: Text(
                                  'SELF DIRECTED LEARNING',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothFour()));
                                }),
                          ),
                        ),
                        //
                        SizedBox(width: 7.0),
                        ButtonTheme(
                          minWidth: 100,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.yellow[600],
                                child: Text(
                                  'ACTIVE EXHIBTION',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothFive()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: new Text(
                      '_______________________________________________________________________________',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
//                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  //column 3
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5.0),
                        ButtonTheme(
                          minWidth: 160,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.orangeAccent,
                                child: Text(
                                  'ESCAPE ROOM',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothSix()));
                                }),
                          ),
                        ),
                        SizedBox(width: 7.0),
                        ButtonTheme(
                          minWidth: 200,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.orangeAccent,
                                child: Text(
                                  'PEEL AND WATCH',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothSeven()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: new Text(
                      '_______________________________________________________________________________',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
//                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  //column 4
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5.0),
                        ButtonTheme(
                          minWidth: 180,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.pink[200],
                                child: Text(
                                  'MC. SHOW ROOM',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothEight()));
                                }),
                          ),
                        ),
                        SizedBox(width: 7.0),
                        ButtonTheme(
                          minWidth: 180,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.pink[200],
                                child: Text(
                                  'LX BUILDING STUDY',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothNine()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),

                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: new Text(
                      '_______________________________________________________________________________',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                  //column 5
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 5.0),
                        ButtonTheme(
                          minWidth: 360,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.blueGrey[500],
                                child: Text(
                                  'ENTREPRENEUR INNOVATION SHOW CART',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothTen()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //column 6
                  Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 30.0),
                        ButtonTheme(
                          minWidth: 200,
                          child: new Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.blueGrey[500],
                                child: Text(
                                  'POPUP EXHIBITION',
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(8.0),
                                onPressed: () async {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BoothEleven()));
                                }),
                          ),
                        ),
                        SizedBox(width: 70.0),
                        FlatButton(
                            child: Image.asset(
                                'assets/images/indoormap/button.png',
                                height: 70.0,
                                width: 70.0),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ActivityOne()));
                            }),
                      ],
                    ),
                  ),
                  //column 6
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// imageProvider: const AssetImage("assets/images/indoormap/lxfirstfloor.jpg",),
