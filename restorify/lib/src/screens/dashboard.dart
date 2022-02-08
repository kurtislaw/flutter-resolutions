import 'dart:ffi';
import 'dart:ui';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:restorify/src/screens/navigation_bar.dart';
import 'package:restorify/src/screens/animated_background.dart';

class DashboardScreen extends StatelessWidget {
  int index = 0;
  DashboardScreen({Key? key}) : super(key: key);

  void _incrementIndex(int index) {
    setState() {
      this.index = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    String name = "Tony";

    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        bottomNavigationBar: NavigationBar_1(),
        body: Container(
          child: Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: AnimatedBackground(),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 50,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hi ' + name + ' !',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Open Sans',
                                    fontSize: 40,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
