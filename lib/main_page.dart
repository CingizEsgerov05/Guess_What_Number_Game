import 'package:flutter/material.dart';
import 'package:guess_what_number/diff_level.dart';
import 'package:guess_what_number/instructions.dart';
import 'package:guess_what_number/screen_info.dart';
import 'package:guess_what_number/settings.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScreenInfo screen = ScreenInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('images/GtN.jpg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      fixedSize: Size.square(screen.screenHeight / 30),
                      backgroundColor: const Color.fromARGB(255, 227, 23, 23)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settingss()));
                  },
                  child: const Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      fixedSize: Size.square(screen.screenHeight / 20),
                      backgroundColor: const Color.fromARGB(255, 227, 23, 23)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DiffLevel()));
                  },
                  child: const Text(
                    "Play",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      fixedSize: Size.square(screen.screenHeight / 30),
                      backgroundColor: const Color.fromARGB(255, 227, 23, 23)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Instructions()));
                  },
                  child: const Icon(
                    Icons.question_mark_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
