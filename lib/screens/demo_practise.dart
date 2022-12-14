import 'package:flutter/material.dart';
import 'data_demo_practice .dart';
class MainPractice extends  StatelessWidget{
  //final String img = "assets/quiz";
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("practise quiz"),backgroundColor: Colors.orangeAccent,),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,  
        mainAxisSpacing: 8.0, 
       
       children: [
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-1",color: Color.fromARGB(255, 132, 178, 216)),
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-2",color: Color.fromARGB(255, 231, 171, 81),),
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-3",color: Color.fromARGB(255, 243, 132, 124),),
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-4",color:Color.fromARGB(255, 152, 240, 155)),
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-5",color: Color.fromARGB(255, 240, 88, 139),),
           Demopractice(img:"assets/quiz.jpeg",text:"quiz-6",color: Colors.cyan,),
      
       ],
       
        )
      
     
      
    );
  }
}