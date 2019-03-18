import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
 TextEditingController _emailController;
  TextEditingController _passwordController;
  @override
  void initState(){
    
    super.initState();
    _emailController = new TextEditingController();
    _passwordController = new TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            heroLogo(), 
          Spacer(
            flex: 3,
          ), 
          loginInput(),
          Spacer(
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 140),
            child: Text("Signup",style: TextStyle(color: Colors.green),),
            color: Colors.black87,
            disabledColor: Colors.black54,
            disabledTextColor: Colors.lightGreen,
            onPressed: (){
              FirebaseAuth.instance.signInWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text
              ).whenComplete((){
                //TODO:
              });
              print(_emailController.text);
              print(_passwordController.text);
            },
          ),
          Container(
            child: FlatButton(
              child: Text("Already have an Account"),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
          ),
          Spacer(
            flex: 3,
          ),
          ],
        ),
      ),
    );
  }

  Container heroLogo() => Container(
    margin: EdgeInsets.only(top: 85.0),
      width: 100,
      child: Column(
        children: <Widget>[
          Image.network(
              "https://raw.githubusercontent.com/tattwei46/flutter_login_demo/master/assets/flutter-icon.png"),
        ],
      ));

  Container loginInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          TextField(
            cursorColor: Colors.green,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.green,
              hintText: "Email",
              icon: Icon(Icons.email),
              labelStyle: TextStyle(color: Colors.green),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
              )
            ),
            
            controller: _emailController,
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(Icons.lock),
            ),
            validator: (value)=>value.isEmpty?"Password can't be empty":null,
          )
        ],
      ),
    );
  }
}
