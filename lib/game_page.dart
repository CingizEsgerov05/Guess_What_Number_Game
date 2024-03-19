import 'dart:math';

import 'package:flutter/material.dart';

import 'package:guess_what_number/result_page.dart';
import 'package:guess_what_number/screen_info.dart';

// ignore: must_be_immutable
class GamePage extends StatefulWidget {
  late int hintCount;

  GamePage({
    super.key,
    required this.hintCount,
  });

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  ScreenInfo screen = ScreenInfo();
  var tfGuess = TextEditingController();
  int randomNum = 0;
  String hint = "";

  @override
  void initState() {
    super.initState();
    randomNum = Random().nextInt(101);
    print("Random number: $randomNum");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              height: 370,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Remaining hint:",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${widget.hintCount}",
                    style: const TextStyle(
                        fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Help:",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    hint,
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screen.screenWidth / 15),
              child: TextField(
                controller: tfGuess,
                decoration: const InputDecoration(
                    labelText: "Guess the number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
                width: 300,
                height: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {
                    int guess = int.parse(tfGuess.text);
                    if (tfGuess.text != '') {
                      setState(() {
                        widget.hintCount = widget.hintCount - 1;
                      });
                    }

                    if (guess == randomNum) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultPage(
                                    result: true,
                                  )));

                      return;
                    }
                    if (guess > randomNum) {
                      setState(() {
                        hint = "Reduce";
                      });
                    }
                    if (guess < randomNum) {
                      setState(() {
                        hint = "Increase";
                      });
                    }

                    if (widget.hintCount == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultPage(
                                    result: false,
                                  )));
                    }

                    tfGuess.text = "";
                  },
                  child: const Text(
                    "Guess",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
