import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //the values stored in this property has to be a function or point at a function
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //adjusting the width
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
      ),
    );
  }
}
