import 'package:flutter/material.dart';
import 'package:guess_what_number/screen_info.dart';

class ResultPage extends StatefulWidget {
  final bool result;
  const ResultPage({
    super.key,
    required this.result,
  });
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  ScreenInfo screen = ScreenInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.result
                ? SizedBox(
                    width: screen.screenWidth / 2,
                    height: screen.screenHeight / 6,
                    child: Image.asset(
                      "images/win.png",
                      fit: BoxFit.fill,
                    ),
                  )
                : SizedBox(
                    width: screen.screenWidth / 2,
                    height: screen.screenHeight / 8,
                    child: Image.asset(
                      "images/lose.png",
                      fit: BoxFit.fill,
                    ),
                  ),
            SizedBox(
                width: 300,
                height: 90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Exit",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
