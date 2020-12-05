import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text('Button counter'),
        ),
        body: Container(
          child: bodyProgram(),
        ),
      ),
    );
  }
}

class bodyProgram extends StatefulWidget {
  @override
  createState() => new buttonCounters();
}

class buttonCounters extends State<bodyProgram> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: () {
          setState(() {
            counter++;
          });
        }),
        Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
            child: Text('Нажми'),
            width: 80),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.black,
              )),
          child: new Text(
            '$counter',
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
