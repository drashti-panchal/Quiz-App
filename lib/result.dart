import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reset;
  Result(this.finalScore, this.reset);

  String get number {
    String sentence;
    if (finalScore <= 8) {
      sentence = 'You are awesome and cool';
    } else if (finalScore <= 13) {
      sentence = 'You are pretty';
    } else if (finalScore <= 15) {
      sentence = 'You are cute';
    } else {
      sentence = 'Ahhhh';
    }

    return sentence;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          //textcolor: Color.black,
          ElevatedButton(onPressed: reset,child: Text('Restart Quiz'),
          
          
          ),
        ],
      ),
    );
  }
}
