import 'package:flutter/material.dart';
import 'package:flutter_application_1/result.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  
 
    var questions = [
      {
        'questionText': 'What is your favourite color',
        'answers': [
          {'text': 'Red', 'score': 10},
          {'text': 'Blue', 'score': 10},
          {'text': 'Green', 'score': 10},
          {'text': 'Yellow', 'score': 10}
        ],
      },
      {
        'questionText': 'What is your favourite animal',
        'answers': [
          {'text': 'Dog', 'score': 10},
          {'text': 'Bunny', 'score': 8},
          {'text': 'Cat', 'score': 5},
          {'text': 'Lizard', 'score': 1}
        ],
      },
      {
        'questionText': 'What is your favourite food',
        'answers': [
          {'text': 'Pizza', 'score': 10},
          {'text': 'Puff', 'score': 8},
          {'text': 'Pasta', 'score': 9},
          {'text': 'Noodles', 'score': 10}
        ],
      }
    ];
    var index = 0;
    int totalScore = 0;

    void resetQuiz() {
      setState(() {
        index = 0;
        totalScore = 0;
      });
    }

    void result(int score) {
      totalScore += score;
      setState(() {
        index += 1;
      });
      print(index);
      if (index < questions.length) {
        print('We have more questions');
      } else {
        print('No more questions');
      }
    }
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: index < questions.length
            ? Quiz(index: index, 
            result: result, 
            questions: questions)
            : Result(totalScore,resetQuiz),
      ),
    );
  }
}
