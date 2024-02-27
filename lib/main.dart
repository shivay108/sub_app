import 'package:flutter/material.dart';
import 'runningscreen.dart';
import 'substitute.dart'; // Import the file you want to run

void main() => runApp(const MyApp(home: StepsGoalWidget(currentSteps: 4000, goalSteps: 8000,)));

class MyApp extends StatelessWidget {
  final Widget home;

  const MyApp({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: home,
        ),
      ),
    );
  }
}
