
import '../constants.dart';
import '../widgets/question-widget.dart';
import './questions-model.dart';
import 'package:flutter/material.dart';
import '../widgets/next-button.dart';
class QuestionData extends StatelessWidget{

List<Questions> _questions=[
  Questions(
    id:"10",
    ques: "what is 2+2", 
    options: {"3":false,"6":false,"4":true,"9":false}),
    Questions(
    id:"11",
    ques: "what is 2+4", 
    options: {"3":false,"6":true,"4":false,"9":false})
];
int index=0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("quiz app"),
        backgroundColor: background,

      ),
      body: Container(
        //todo give padding
        color: background,
        width: double.infinity,
        child: Column(children: [
           QuestionWidgets(question: _questions[index].ques, indexAction: index, totalQuestions: _questions.length) 
        ]),
      ),
      floatingActionButton: NextButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ); 
  }
} 