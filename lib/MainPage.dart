import 'package:flutter/material.dart';
import 'DispaySide.dart';
import 'WheelSide.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            DisplaySide(),
            WheelSide(),
          ],
        ),
      ),
    );
  }
}