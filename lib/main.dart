import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var OldQuestion = [
      {
        "QUESTION": "What your favorite food ?!",
        "ANSWER": ["perger", "shawerma", "checkn", 'Hot Dog']
      },
      {
        "QUESTION": "What your favorite sport ?!",
        "ANSWER": ["Tines", "Football", "Sweming", ' GYm']
      },
      {
        "QUESTION": "Did you love the APK ?!",
        "ANSWER": ["Yes", "No", "Meybe", ' a littel bit']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wellcom In My APP'),
        ),
        body: Column(
          children: [
            Question(OldQuestion[_questionIndex]),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
