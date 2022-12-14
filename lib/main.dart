import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
//import './home_screen.dart';

import './demo_practise.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return GetMaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
	super.initState();
	Timer(Duration(seconds: 3),
		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														HomeScreen()
														)
									)
		);
}
@override
Widget build(BuildContext context) {
	return 
      
     
        Column(children: [
            Container(
        height:820,
        width:380,
        color: Colors.white,
        
        child:Image.asset("assets/quiz.jpeg", width: 300,height: 1400)
      )
        ]);
    
      
    
  
}
}

