import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/indoormap/activity/activityNine.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEight.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEleven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFive.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFour.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothOne.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSeven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSix.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTen.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothThree.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTwo.dart';
import 'package:lxnavigator/src/home/views/home.dart';
import 'package:photo_view/photo_view.dart';
import 'package:responsive_container/responsive_container.dart';

//LX Building Study Booth
class BoothNine extends StatefulWidget {
  @override
  _BoothNineState createState() => _BoothNineState();
}

class _BoothNineState extends State<BoothNine> {
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
                            "assets/images/indoormap/booth/Study.png"),
                        maxScale: PhotoViewComputedScale.covered * 2.0,
                        minScale: PhotoViewComputedScale.contained * 0.8,
                        initialScale: PhotoViewComputedScale.covered,
                      ),
                    ),
                  ),

                  //column 0
                  Container(
                    padding:
                        EdgeInsets.only(bottom: 20.0, left: 50.0, right: 50.0),
                  ),
//column 1
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 100,
                              widthPercent: 27,
                              child: new Center(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.yellow[600],
                                    child: AutoSizeText(
                                      'VR AR MR',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(0.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothOne()));
                                    }),
                              ),
                            ),
                          ),
//                          SizedBox(width: 7.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 30,
                              padding: EdgeInsets.only(right: 10),
                              child: new Center(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.yellow[600],
                                    child: AutoSizeText(
                                      'WORKSHOP',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothTwo()));
                                    }),
                              ),
                            ),
                          ),
//                          SizedBox(width: 7.0),

                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 40,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.yellow[600],
                                    child: AutoSizeText(
                                      'DESIGN STUDIES',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                  padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothThree()));
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                  ),
                  //column 2
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 55,
                              padding: EdgeInsets.only(right: 10),
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.yellow[600],
                                    child: AutoSizeText(
                                      'SELF DIRECTED LEARNING',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                  padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothFour()));
                                    }),
                              ),
                            ),
                          ),
                          //
//                          SizedBox(width: 7.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 40,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.yellow[600],
                                    child: AutoSizeText(
                                      'ACTIVE EXHIBTION',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothFive()));
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: AutoSizeText(
                      '___________________________________________________________________________',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
//                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  //column 3
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 40,
                              padding: EdgeInsets.only(right: 10),
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.orangeAccent,
                                    child: AutoSizeText(
                                      'ESCAPE ROOM',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothSix()));
                                    }),
                              ),
                            ),
                          ),
//                          SizedBox(width: 7.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 55,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.orangeAccent,
                                    child: AutoSizeText(
                                      'PEEL AND WATCH',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothSeven()));
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: AutoSizeText(
                      '___________________________________________________________________________',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
//                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  //column 4
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 46,
                              padding: EdgeInsets.only(right: 10),
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.pink[200],
                                    child: AutoSizeText(
                                      'MC. SHOW ROOM',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothEight()));
                                    }),
                              ),
                            ),
                          ),
//                          SizedBox(width: 7.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 48,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.pink[900],
                                    child: AutoSizeText(
                                      'LX BUILDING STUDY',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothNine()));
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child:  AutoSizeText(
                      '___________________________________________________________________________',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10.0,
//                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  //column 5
                  new Padding(padding: EdgeInsets.all(2.0)),
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 92,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.blueGrey[500],
                                    child: AutoSizeText(
                                      'ENTREPRENEUR INNOVATION SHOW CART',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothTen()));
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(2.0)),
                  //column 6
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 10,
                      widthPercent: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: <Widget>[
//                          SizedBox(width: 30.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 40,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.blueGrey[500],
                                    child: AutoSizeText(
                                      'POPUP EXHIBITION',maxLines:1,
                                      style: TextStyle(color: Colors.white),
                                    ),
//                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () async {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BoothEleven()));
                                    }),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: ResponsiveContainer(
                              widthPercent: 25,
                              heightPercent: 5,
                            ),
                          ),
                          FlatButton(
                              child: Image.asset(
                                  'assets/images/indoormap/button.png',
                                  height: 70.0,
                                  width: 70.0),
                              onPressed: () async {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ActivityNine()));
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
