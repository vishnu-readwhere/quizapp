
import '../constants.dart';
import '../widgets/question-widget.dart';
import './questions-model.dart';
import 'package:flutter/material.dart';
import '../widgets/next-button.dart';
import '../widgets/options_card.dart';

class QuestionData extends StatefulWidget {
  const QuestionData({super.key});

  @override
  State<QuestionData> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuestionData> {
  List<Questions> _questions=[
   Questions(
     id:"10",
     ques: "what is 2+2", 
     options: {"3":false,"6":false,"4":true,"9":false}),
     Questions(
     id:"11",
     ques: "what is 2+4", 
     options: {"3":false,"6":true,"4":false,"9":false}),
     Questions(
     id:"11",
     ques: "what is 2+4", 
     options: {"3":false,"6":true,"4":false,"9":false})
 ];
 int index=0;
 bool isPressed = false;
 void nextQuestion(){
  if(index==_questions.length-1){
    return;
  }
  else{
    setState((){
     index++;
     isPressed=false;
   });
  }
   
 }
 void changeColor(){
    setState(() {
      isPressed=true;
    });
   }
  @override
  Widget build(BuildContext context) {
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
           QuestionWidgets(question: _questions[index].ques,
            indexAction: index, 
            totalQuestions: _questions.length), 
        const SizedBox(height: 25.0),
        for(int i=0;i<_questions[index].options.length;i++)
        OptionCard(option: _questions[index].options.keys.toList()[i],
        color: isPressed? _questions[index].options.values.toList()[i]==true?correct:incorrect:neutral,
        onTap: changeColor,),
        ]
       
        ),
        
         
        
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: NextButton(nextQuestion: nextQuestion),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}



 