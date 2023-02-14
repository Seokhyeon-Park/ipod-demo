import 'package:flutter/material.dart';

class Wheel extends StatelessWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // double iconBtnPosTop = [width/2, (wheelBtnWidth-centerBtnWidth)/4 + (centerBtnHeight/2)] as double;
    // double iconBtnPosRight = [(wheelBtnHeight-centerBtnHeight)/4 + (centerBtnHeight/2), height/2] as double;
    // double iconBtnPosBottom = [(wheelBtnHeight-centerBtnHeight)/4 + (centerBtnHeight/2), (wheelBtnWidth-centerBtnWidth)/4 + (centerBtnWidth/2)] as double;
    // double iconBtnPosLeft = [(wheelBtnHeight-centerBtnHeight)/4 + (centerBtnHeight/2), (wheelBtnWidth-centerBtnWidth)/4 + (centerBtnWidth/2)] as double;

    return Material(
      color: const Color.fromRGBO(220, 220, 220, 1.0),
      child: Center(
        child: WheelBtn(width:width, height:height),
      ),
    );
  }
}

class WheelBtn extends StatefulWidget {
  WheelBtn({Key? key, required this.width, required this.height}) : super(key: key);
  double width;
  double height;

  @override
  State<WheelBtn> createState() => _WheelBtnState();
}

class _WheelBtnState extends State<WheelBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.7,
      height: widget.height * 0.7,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1.0),
        shape: BoxShape.circle,
      ),
      child: Center(child: CenterBtn(width: widget.width, height: widget.height,)),
    );
  }
}

class CenterBtn extends StatefulWidget {
  CenterBtn({Key? key, required this.width, required this.height}) : super(key: key);
  double width;
  double height;

  @override
  State<CenterBtn> createState() => _CenterBtnState();
}

class _CenterBtnState extends State<CenterBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.3,
      height: widget.height * 0.3,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(220, 220, 220, 1.0),
        shape: BoxShape.circle,
      ),
    );
  }
}