import 'package:flutter/material.dart';
import 'Display.dart';

class DisplaySide extends StatelessWidget {
  const DisplaySide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height*0.5,
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
        color: Color.fromRGBO(220, 220, 220, 1.0),
      ),
      child: const Display(),
    );
  }
}
