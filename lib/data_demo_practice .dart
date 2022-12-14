import 'package:flutter/material.dart';
import 'package:quiz_app/components/quiz-1.dart';
import 'package:quiz_app/components/quiz-2.dart';
import 'package:quiz_app/components/quiz-3.dart';
import './models/question-data.dart';

class Demopractice extends StatelessWidget{
  final String img; 
  final String text;
  final Color color;
  Demopractice({required this.img,required this.text,required this.color});  
   @override 
  Widget build(BuildContext context){
    return TextButton
      (
        
        onPressed: (() {
        // ignore: avoid_print
        if(text=="quiz-1"){
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  QuestionData()));
        }
        if(text=="quiz-2"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Quiz2()));
        }
        if(text=="quiz-3"){
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Quiz3()));
        }
        if(text=="quiz-4"){
          print("clicked-4");
        }
        if(text=="quiz-5"){
          print("clicked-5");
        }
        if(text=="quiz-6"){
          print("clicked-6");
        }
        
      }),
        child:Container(
        width:150,
        height: 150,
        decoration:BoxDecoration(color: color,borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
        ),),

     
          child:Column(mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
             
         Image.asset(img,width: 100),
          const Padding(padding:EdgeInsets.only(top: 10.0)),
        Center(
        child: Text(text,style: const TextStyle(color: Colors.white),),
      )
      ],)) ,
        );
  }
}