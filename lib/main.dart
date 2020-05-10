import 'package:flutter/material.dart';
import 'package:lxnavigator/src/models/user.dart';
import 'package:lxnavigator/src/presenters/auth.dart';
import 'package:lxnavigator/src/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

// void main(){
//   runApp(new MaterialApp(
//     home: new MyApp(),
//   ));
// }

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      navigateAfterSeconds: AfterSplash(),
      title: Text(
        'Welcome In LX Navigator',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      image: Image.asset('assets/images/logo/Logo1.png'),
      imageBackground: AssetImage('assets/images/background/BG_Home.png'),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
