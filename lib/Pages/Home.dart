import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './LoginPage.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME",style: TextStyle(color: Colors.green,letterSpacing: 5),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                print("Hello");
                //TODO: Logout and move to Login page
              },
              child: Row(children: <Widget>[Icon(FontAwesomeIcons.signOutAlt,color: Colors.green,)],),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}