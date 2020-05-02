import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class IndoorMap extends StatefulWidget {
  @override
  _IndoorMapState createState() => _IndoorMapState();
}

class _IndoorMapState extends State<IndoorMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('LX Navigator'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                // Container(
                //   padding: const EdgeInsets.all(20.0),
                //   child: Text(
                //     "Example of usage with something different than a image",
                //     style: const TextStyle(fontSize: 18.0),
                //   ),
                // ),
                Container(
                  //  margin: const EdgeInsets.symmetric(
                  //       vertical: 20.0,
                  //       horizontal: 20.0,
                  //     ),
                  height: 250.0,
                  child: ClipRect(
                    child: PhotoView(
                      imageProvider: const AssetImage(
                          "assets/images/indoormap/lxfirstfloor.jpg"),
                      maxScale: PhotoViewComputedScale.covered * 2.0,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      initialScale: PhotoViewComputedScale.covered,
                    ),
                  ),
                ),

                //column 0
                Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                ),
                //column 1
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth1',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth2',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth3',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                    ],
                  ),
                ),

                 //column 2
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth4',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth5',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth6',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 3
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth7',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth8',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth9',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 4
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth10',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth11',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Booth12',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                    ],
                  ),
                ),

                //column 5
                // Container(
                //   // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity13',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity14',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity15',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                //column6
                // Container(
                //   // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity16',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity17',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //       Expanded(
                //         child: new Center(
                //           child: RaisedButton(
                //               color: Colors.pink[400],
                //               child: Text(
                //                 'Activity18',
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               padding: EdgeInsets.all(8.0),
                //               onPressed: () async {}),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                 Container(
                  // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: new Center(
                          child: RaisedButton(
                              color: Colors.pink[400],
                              child: Text(
                                'Detail',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(8.0),
                              onPressed: () async {}),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// imageProvider: const AssetImage("assets/images/indoormap/lxfirstfloor.jpg",),
