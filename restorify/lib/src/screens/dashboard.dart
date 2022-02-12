import 'dart:ffi';
import 'dart:ui';
import 'package:blur/blur.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restorify/src/widgets/todolist.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:restorify/src/widgets/navigation_bar.dart';
import 'package:restorify/src/widgets/animated_background.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DashboardScreen extends StatelessWidget {
  int index = 0;
  late final AnimationController _controller;

  DashboardScreen({Key? key}) : super(key: key);

  void _incrementIndex(int index) {
    setState() {
      this.index = index;
    }
  }

  List<Color> ColorList = [
    Color.fromARGB(255, 244, 179, 199),
    Color.fromARGB(255, 230, 17, 88),
    Color.fromARGB(255, 199, 125, 199),
    Color.fromARGB(255, 251, 188, 191),
    Color.fromARGB(255, 212, 108, 216),
    Color.fromARGB(255, 255, 81, 0),
    Color.fromARGB(255, 222, 121, 140),
    Color.fromARGB(255, 235, 167, 169),
    Color.fromARGB(255, 199, 125, 199),
    Color.fromARGB(255, 114, 23, 219)
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    String name = "Tony";
    final rocketImage = 'assets/images/Saly-43.png';
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        bottomNavigationBar: NavigationBar_1(),
        body: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Blur(
                        blur: 50,
                        child: Positioned.fill(
                          child: AnimatedBackground(
                            ColorList: ColorList,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                    top: 50,
                                    right: 150,
                                  ),
                                  child: Text(
                                    'Hi ' + name + ' !',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            AspectRatio(
                              aspectRatio: 2.5 / 2,
                              child: Container(
                                child: Text('Goals Completed'),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(50, 255, 251, 251),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(25.0),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 4 / 3,
                              child: Container(
                                child: ToDoListScreen(),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(98, 255, 251, 251),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(25.0),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 250,
                        top: -50,
                        bottom: 475,
                        child: Image.asset(
                          rocketImage,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            clipBehavior: Clip.none,
          ),
        ),
      ),
    );
  }
}
