import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/indoormap/activity/activityTen.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEight.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothEleven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFive.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothFour.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothNine.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothOne.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSeven.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothSix.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothThree.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTwo.dart';
import 'package:lxnavigator/src/home/views/home.dart';
import 'package:photo_view/photo_view.dart';
import 'package:responsive_container/responsive_container.dart';

//Entrepreneur Innovation Show Cart Booth
class BoothTen extends StatefulWidget {
  @override
  _BoothTenState createState() => _BoothTenState();
}

class _BoothTenState extends State<BoothTen> {
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
                            "assets/images/indoormap/booth/EISC.png"),
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

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 100,
                              widthPercent: 24,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 2,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 27,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 2,
                          ),
//                          SizedBox(width: 7.0),

                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 35,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
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

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
//                          SizedBox(width: 5.0),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 50,

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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 2,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 38,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.symmetric(vertical: 5,horizontal: 20),
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

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 38,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 2,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 50,
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.symmetric(vertical: 5,horizontal: 20),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 2,
                          ),
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
                                    color: Colors.pink[200],
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
//
                  new Padding(
                    padding: new EdgeInsets.symmetric(vertical: 5,horizontal: 20),
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

                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 5,
                      widthPercent: 100,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          SizedBox(width: 5.0),
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                          ButtonTheme(
                            child: ResponsiveContainer(
                              heightPercent: 5,
                              widthPercent: 90,
                              child: new Container(
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: Colors.blueGrey[700],
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
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //column 6
                  Container(
                    child: ResponsiveContainer(
                      heightPercent: 10,
                      widthPercent: 100,

                      child: Row(
                        children: <Widget>[
//                          SizedBox(width: 30.0),
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
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
                                        builder: (context) => ActivityTen()));
                              }),
                          ResponsiveContainer(
                            heightPercent: 5, widthPercent: 5,
                          ),
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
