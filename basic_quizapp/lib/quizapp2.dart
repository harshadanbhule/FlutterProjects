import 'package:flutter/material.dart';


class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  // List of Questions And Options And Answers

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class QuestionModel {
  // Variable Declared
  final String? question;
  final List<String>? options;
  final int? answer;

  const QuestionModel({this.question, this.options, this.answer});
}

class _QuizAppState extends State<QuizApp> {
  // Variables for QuizApp

  bool quizScreen = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  int totalMarks = 0;
  int noOfCorrectAnswers = 0;

  List questionList = [
    const QuestionModel(
    question: "Who is the founder of C ?",
    options: ["Dennis Ritchie", "Linus Torvalds", "Bjarne Stroustrup", "Bill Gates"],
    answer: 0,
  ),
  const QuestionModel(
    question: "Who is the founder of C++ ?",
    options: ["James Gosling", "Linus Torvalds", "Bjarne Stroustrup", "Bill Gates"],
    answer: 2,
  ),
  const QuestionModel(
    question: "Who is the founder of Java ?",
    options: ["Dennis Ritchie", "James Gosling", "Guido van Rossum", "Bill Gates"],
    answer: 1,
  ),
  const QuestionModel(
    question: "Who is the founder of Python ?",
    options: ["Dennis Ritchie", "Guido van Rossum", "Linus Torvalds", "James Gosling"],
    answer: 1,
  ),
  const QuestionModel(
    question: "Who is the founder of Dart ?",
    options: ["Dennis Ritchie", "Lars Bak", "Bjarne Stroustrup", "James Gosling"],
    answer: 1,
  ),
  ];

  // method to check Valid Index

  void validIndex() {
    if (selectedIndex == -1) {
      //return;
    }

    if (questionIndex == questionList.length - 1) {
      setState(() {
      quizScreen = false;
      
      });
    }

    if (selectedIndex == questionList[questionIndex].answer) {
      totalMarks++;
      noOfCorrectAnswers += 1;
    }
    selectedIndex = -1;
    questionIndex++;
    setState(() {});
  }

  // Method that returns Colour

  MaterialStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedIndex == answerIndex) {
      if (answerIndex == questionList[questionIndex].answer) {
        return const MaterialStatePropertyAll(Color.fromRGBO(17, 121, 4, 1));
      } else if (selectedIndex != questionList[questionIndex].answer) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 194, 0, 0));
      }
    }
    if (selectedIndex != -1 &&
        answerIndex == questionList[questionIndex].answer) {
      return const MaterialStatePropertyAll(Color.fromRGBO(17, 121, 4, 1));
    }
    return const MaterialStatePropertyAll(Color(0xFFEFECEC));
  }

  Scaffold screenScaffold() {
    if (quizScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 33, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor:Color(0xFF222831),
          titleSpacing: 3,
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Question : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text("${questionIndex + 1}/${questionList.length}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 150,
              )
            ],
          ),
          Center(
            child: Container(
              
              decoration: const BoxDecoration(
                          color: Color(0xFF393E46),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 79, 77, 77),offset: Offset(10, 10),blurRadius: 12
                                )
                              ],
                              ),
              
              child: SizedBox(
                width: 360,
                height: 450,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 360,
                      decoration: const BoxDecoration(
                          color: Color(0xFF00ADB5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              )
                              
                              ),
                      child: Center(
                        child: Text(
                          "${questionList[questionIndex].question}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          selectedIndex = 0;
                          setState(() {});
                        },
                        style: ButtonStyle(
                          foregroundColor:
                             MaterialStateProperty.all(const Color.fromARGB(255, 0, 0, 0)),
                          backgroundColor: checkAnswer(0),
                        ),
                        child: Text(
                          "${questionList[questionIndex].options[0]}",
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          selectedIndex = 1;
                          setState(() {});
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(const Color.fromARGB(255, 0, 0, 0)),
                          backgroundColor: checkAnswer(1),
                        ),
                        child: Text(
                          "${questionList[questionIndex].options[1]}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          selectedIndex = 2;
                          setState(() {});
                        },
                        style: ButtonStyle(
                          foregroundColor:
                             MaterialStateProperty.all(const Color.fromARGB(255, 0, 0, 0)),
                          backgroundColor: checkAnswer(2),
                        ),
                        child: Text(
                          "${questionList[questionIndex].options[2]}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          selectedIndex = 3;
                          setState(() {});
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(const Color.fromARGB(255, 0, 0, 0)),
                          backgroundColor: checkAnswer(3),
                        ),
                        child: Text(
                          "${questionList[questionIndex].options[3]}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validIndex();
          },
          backgroundColor: const Color(0xFF222831),
          child: const Icon(
            Icons.arrow_forward,color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/images/—Pngtree—3d winning trophy with golden_5955126.png",
                height: 400,
                width: 400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Congratulations !",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You have completed the Quiz",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(height: 15),
            Text(
              "Correct Answers : $noOfCorrectAnswers/${questionList.length}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF222831)),
                  ),
                  onPressed: () {
                    questionIndex = 0;
                    quizScreen = true;
                    noOfCorrectAnswers = 0;
                    selectedIndex = -1;
                    setState(() {});
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return screenScaffold();
  }
}
