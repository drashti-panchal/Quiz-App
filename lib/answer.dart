import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function apple;
  final String answer;
  Answer(this.apple,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: apple,
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
