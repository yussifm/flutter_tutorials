import 'package:flutter/material.dart';
import 'package:flutter_totu/Service/QuesitionBrain.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> scorekeeper = [];
  int qNum = 0;

  void generateQnA() {
    if (qNum < QuizBrain().getQuLen() - 1) {
      qNum += 1;
    } else if (qNum >= QuizBrain().getQuLen() - 1) {
      qNum = 0;
      scorekeeper = [];
    }
  }

  void checkAnswer(bool userInput) {
    bool correctAns = QuizBrain().getAnswer(qNum);

    setState(() {
      if (userInput == correctAns) {
        scorekeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
            size: 30.0,
          ),
        );
      } else {
        scorekeeper.add(
          Icon(
            Icons.close_rounded,
            color: Colors.red,
            size: 30.0,
          ),
        );
      }
      generateQnA();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                QuizBrain().getQuestions(qNum),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(4.0),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text(
                  "True",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(4.0),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                ),
                child: Text(
                  "False",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: scorekeeper,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
