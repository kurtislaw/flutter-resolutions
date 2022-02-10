import 'dart:ffi';
import 'dart:ui';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:restorify/src/screens/todolist.dart';
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
    final rocketImage = 'assets/images/Saly-43.png';

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
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned.fill(
                        child: AnimatedBackground(),
                      ),
                      Container(
                        // padding: const EdgeInsets.only(
                        //   left: 30,
                        //   top: 20,
                        // ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  left: 100,
                                  top: 0,
                                  bottom: -20,
                                  child: Image.asset(
                                    rocketImage,
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                    
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                    top: 80,
                                    right: 100,
                                  ),
                                  child: Text(
                                    'Hi ' + name + ' !',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Open Sans',
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
                                    color: Color.fromARGB(98, 255, 251, 251),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(25.0),
                                padding: EdgeInsets.all(15),
                              ),
                              
                            ),
                            
                            AspectRatio(
                              aspectRatio: 4.5 / 3,
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
