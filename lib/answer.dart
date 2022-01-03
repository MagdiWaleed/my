import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function sellect;

  Answers(this.sellect);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          onPressed: () {
            sellect();
          }),
    );
  }
}
