import 'package:flutter/material.dart';

class AnswerDetailsPage extends StatelessWidget {
  final String answerText;

  AnswerDetailsPage({required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
