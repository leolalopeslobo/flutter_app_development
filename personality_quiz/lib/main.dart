import 'package:flutter/material.dart';

//OWN FILES
import './questions.dart'; //./ - look in the same folder as the main.dart file
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
  @override
  Widget build (BuildContext contents) {
    var questions = [
      //Creating a Map
      //A map is created with curly braces or by using the map class
      //A map is a collection of key-value pairs (like dictionary in python)
      {'questionText':'What\'s your favourite color?','answers':[
        'Black','Red','Green','White'],
      },
      {'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Map'], //Map is a class built into class
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My First App')
        ),
        body: Column(
          children: [
            Question
              (questions[_questionIndex]['questionText'] as String,),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList() //Converts the Map to a List
          ], //... - spread operator
        ),
      ),
    );
  }
}
