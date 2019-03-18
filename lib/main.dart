import 'package:flutter/material.dart';
import './Pages/LoginPage.dart';
import './Pages/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseAuth auth;
  FirebaseUser user;
  
  @override
  void initState(){
    super.initState();
    auth =FirebaseAuth.instance;
    auth.currentUser().then((FirebaseUser getuser){
      print(getuser);
        user = getuser;
    } );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green,
            accentColor: Colors.green,
            buttonColor: Colors.black87,
            textSelectionColor: Colors.white,
            textSelectionHandleColor: Colors.green,
            accentTextTheme: TextTheme(
              body1: TextStyle(color: Colors.green),
              button: TextStyle(color: Colors.green),
              body2: TextStyle(color: Colors.green),
              caption: TextStyle(color: Colors.green),
              title: TextStyle(color: Colors.green),
              display1: TextStyle(color: Colors.green),
              display2: TextStyle(color: Colors.green),
              display3: TextStyle(color: Colors.green),
              display4: TextStyle(color: Colors.green),
              headline: TextStyle(color: Colors.green),
              overline: TextStyle(color: Colors.green),
              subhead: TextStyle(color: Colors.green),
              subtitle: TextStyle(color: Colors.green),
            )),
        title: 'Flutter Demo',
        home: checkLogin());
  }

  Widget checkLogin(){
    if (user !=null) {
      return Home();
      
    }else{
      return LoginPage();
    }
  }
}
