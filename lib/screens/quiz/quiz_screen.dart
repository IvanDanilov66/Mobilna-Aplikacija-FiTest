import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:domasnabr2/controllers/question.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Прескокни")),
        ],
      ),
      body: Body(),
    );
  }
}
