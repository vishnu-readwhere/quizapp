import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          children: <Widget>[
            Padding(padding:EdgeInsets.only(bottom:50)),
            HomeWidget("Lesson"),
            HomeWidget("Practice"),
            HomeWidget("Test"),
            
          ],
        ));
  }
}
