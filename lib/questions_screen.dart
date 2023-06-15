import 'package:flutter/material.dart';
import 'package:question/answer_button.dart';
import 'package:question/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          })
        ],
      ),
    );
  }
}
