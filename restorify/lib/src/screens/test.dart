import 'package:flutter/material.dart';

class RadialGradientApp extends StatelessWidget {
  const RadialGradientApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: new Container(
          decoration: new BoxDecoration(
              gradient: new RadialGradient(
            colors: [
              Color.fromARGB(255, 190, 184, 235),
              Color.fromARGB(255, 228, 164, 244),
              Color.fromARGB(255, 195, 239, 248),
              Color.fromARGB(255, 214, 84, 84),
              Color.fromARGB(255, 13, 0, 101)
            ],
            radius: 2,
            center: Alignment(0, 0),
          )),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          )),
    );
  }
}
