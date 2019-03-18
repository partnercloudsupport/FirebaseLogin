import 'package:flutter/material.dart';

class MyAppButton extends StatelessWidget {
  final Icon icon;
  final String string;
  final Color color;
  final Function onPressed;

  const MyAppButton({
    Key key,
    @required this.icon,
    @required this.string,
    @required this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 72.0),
              child: FlatButton(
                padding: EdgeInsets.all(5),
                onPressed: onPressed,
                color: color,
                disabledColor: Colors.grey,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(string,style: TextStyle(fontSize: 18,color: Colors.white),),
                  )
                ],
              ),),
            );
  }
}
