import 'package:flutter/material.dart';

void Function() newFun = () {};

class Answers extends StatelessWidget {
  final VoidCallback sellect;
  final List<String> answers;

  Answers(this.sellect, this.answers);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var answer in answers)
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('$answer'),
              onPressed: sellect,
            ),
          ),
      ],
    );
  }
}
