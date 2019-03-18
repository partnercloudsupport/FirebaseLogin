import 'package:flutter/material.dart';
import 'Home.dart';
import '../Utils/GoogleSiginIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utils/Button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            heroLogo(),
            Spacer(),
            MyAppButton(
              onPressed: (){
                googleSiginIn().then((FirebaseUser user){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                });
              },
              color: Colors.red,
              string: "Sigin With Google",
              icon: Icon(FontAwesomeIcons.google,color: Colors.white,),
            ),
            MyAppButton(
              onPressed: (){},
              color: Colors.indigo,
              icon: Icon(Icons.phone,color: Colors.white,),
              string: "Login with Phone",
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget heroLogo() => Center(
    child: Container(
      margin: EdgeInsets.only(top: 85.0),
      width: 100,
      child: Image.network(
            "https://raw.githubusercontent.com/tattwei46/flutter_login_demo/master/assets/flutter-icon.png"),
    ),
  );
}
