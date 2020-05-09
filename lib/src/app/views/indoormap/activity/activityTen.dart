import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothTen.dart';
import 'package:lxnavigator/src/app/views/indoormap/booth/boothThree.dart';

////Entrepreneur Innovation Show Cart Booth
class ActivityTen extends StatefulWidget {
  @override
  _ActivityTenState createState() => _ActivityTenState();
}

class _ActivityTenState extends State<ActivityTen> {
    @override
   Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('rooms')
            .document('ROOM 103')
            .collection('booths')
            .document('booth10')
            .collection('activities')
            .document('activity10')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return Scaffold(
                backgroundColor: Colors.grey,
//                appBar: AppBar(title: Text('Activity')),
                body: Column(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          //column 0
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 50.0),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 30.0,
                                  width: 5.0,
                                ),
                                Row(children: [
                                  IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.white,
                                      iconSize: 30,
                                      onPressed: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BoothTen()));
                                      }),
                                ]),
                                Expanded(
                                  child: new Center(
                                    child: Container(
                                      height: 450,
                                      width: 330,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.red[600],
                                            Colors.deepOrangeAccent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50.0),
                              ],
                            ),
                          ),
                          // circle on the top right
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 90.0, horizontal: 1.0),
                                alignment: Alignment(0.9, -10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                          'assets/images/logo/detail.png',
                                          height: 70.0,
                                          width: 70.0),
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrangeAccent[100],
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 150.0, horizontal: 65.0),
                                  child: RichText(
                                    text: new TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      // style: new TextStyle(
                                      //   fontSize: 14.0,
                                      //   color: Colors.black,
                                      // ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: snapshot.data['boothName'] +
                                                '\n\n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white,
                                            )),
                                        TextSpan(
                                            text: snapshot
                                                    .data['activityTimeStart'] +
                                                ' - ' +
                                                snapshot
                                                    .data['activityTimeEnd'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.white,
                                            )),
                                        TextSpan(
                                            text: snapshot.data['roomID'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.white,
                                            )),
                                        TextSpan(
                                            text: 'Activity Details'+
                                                '\n\n',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            )),
                                        TextSpan(
                                            text: snapshot.data['description'] +
                                                '\n\n',
                                            style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ),

                                  // height: 450,
                                  // width: 300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
          }
        });
  }
}
// imageProvider: const AssetImage("assets/images/indoormap/lxfirstfloor.jpg",),
