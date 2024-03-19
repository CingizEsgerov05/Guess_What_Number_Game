import 'package:flutter/material.dart';
import 'package:guess_what_number/screen_info.dart';

class Instructions extends StatelessWidget {
  final ScreenInfo screen = ScreenInfo();
  Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How to play"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  height: screen.screenHeight / 10,
                  width: screen.screenWidth,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(60))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "You have to find the random number",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: screen.screenWidth / 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: screen.screenHeight / 10,
                  width: screen.screenWidth,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(60))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Random number is between 0-100",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: screen.screenWidth / 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: screen.screenHeight / 10,
                  width: screen.screenWidth,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Easy level has 15",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screen.screenWidth / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Medium level has 10",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screen.screenWidth / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hard level has 5 hints",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screen.screenWidth / 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
