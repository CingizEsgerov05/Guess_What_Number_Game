import 'package:flutter/material.dart';
import 'package:guess_what_number/game_page.dart';
import 'package:guess_what_number/screen_info.dart';

class DiffLevel extends StatefulWidget {
  const DiffLevel({super.key});

  @override
  State<DiffLevel> createState() => _DiffLevelState();
}

class _DiffLevelState extends State<DiffLevel> {
  late int hintCount;
  ScreenInfo screen = ScreenInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )),
              height: screen.screenHeight / 7.4,
              width: screen.screenWidth,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select game",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                    Text("difficulty",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screen.screenHeight / 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        hintCount = 15;

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GamePage(hintCount: hintCount)));
                      },
                      child: const Text(
                        "Easy",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  height: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        hintCount = 10;

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GamePage(hintCount: hintCount)));
                      },
                      child: const Text(
                        "Medium",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  height: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        hintCount = 5;

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GamePage(hintCount: hintCount)));
                      },
                      child: const Text(
                        "Hard",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
