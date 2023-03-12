import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
              title: Text(
                'Ask Me Anything',
              ),
              backgroundColor: Colors.blueAccent),
          body: magicball(),
        ),
      ),
    );

class magicball extends StatefulWidget {
  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  @override
  int changeimge = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
              onPressed: () {
                setState(() {
                  changeimge = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('android/images/ball$changeimge.png')),
        ),
      ]),
    );
  }
}
