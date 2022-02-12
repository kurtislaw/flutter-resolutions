import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restorify/src/screens/home.dart';
import 'package:restorify/src/screens/login.dart';
import 'package:restorify/src/screens/signup.dart';
import 'package:restorify/src/widgets/animated_background.dart';
import 'package:blur/blur.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
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
    double w = MediaQuery.of(context).size.width;
    

    final logo = 'assets/images/logo.png';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/12/Gradient_builder_2.jpg?auto=format&q=60&w=1815&h=1020.9375&fit=crop&crop=faces"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "http://www.personal.psu.edu/kbl5192/jpg.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, h * 0.07, 200.0, 0.0),
              child: Text('Restorify',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: Image.asset(
                logo,
                height: 450,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, h * 0.05, 8.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 49, 144, 252),
                                Color.fromARGB(255, 49, 144, 252),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 150.0, minHeight: 30.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Sign up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 150.0, minHeight: 30.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
