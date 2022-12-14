import 'package:flutter/material.dart';

class QuestionWidgets extends StatelessWidget {
  const QuestionWidgets({super.key,required this.question,required this.indexAction,required this.totalQuestions});
    final String question;
    final int indexAction;
    final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text('Question ${indexAction+1}/$totalQuestions:$question',
      style: TextStyle(fontSize: 24.0,color: Colors.white),
      ),
    );
  }
}