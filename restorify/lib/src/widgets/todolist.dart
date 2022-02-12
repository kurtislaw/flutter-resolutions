import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget{
  ToDoListScreen({Key? key}) : super(key: key);

  ToDoListState createState() => ToDoListState();
  
}

class ToDoListState extends State<ToDoListScreen>{

  Widget build(BuildContext context){
    
    return MaterialApp(
      title: 'List goes ehre',
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: buildInsertButton(),
            ),
          ],
        ),
      )
    );
  }

  Widget buildInsertButton() => RaisedButton(
    child: Text(
      'Insert Item',
      style: TextStyle(fontSize: 20),
    ),
    color: Colors.white,
    onPressed: () {},
  );
}

