import 'package:flutter/material.dart';
import 'package:quiz_app/screens/demo_practise.dart';

class HomeWidget extends StatelessWidget {
  final String text;
  HomeWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return (Row(children: [
      OutlinedButton(
        onPressed: () {
          if(text=="Lesson"){
            print("click on lesson");
          }
          if(text=="Practice"){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MainPractice()),
  );
        }
        if(text=="Test"){
            print("click on test");
          }

          },
     
        child: Container(
          width: 200,
          child: Row(children: [
            Icon(Icons.add),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              text,
            )
          ]),
        ),
      ),
      Padding(padding: EdgeInsets.only(bottom: 30)),
    ]));
  }
}
