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
    return Center(
        child: Column(
      children: [
        GestureDetector(
            onTap: () {
              setState(() {
                if (counter < 100) {
                  counter++;
                }
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 100),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
              child: Center(
                  child: Text('Нажми',
                      style: TextStyle(color: Colors.white, fontSize: 50))),
              width: 200,
              height: 200,
            )),
        Container(
            margin: EdgeInsets.only(top: 100),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.black,
                )),
            child: Center(
                child: new Text(
              '$counter',
              style: TextStyle(fontSize: 70),
            ))),
        GestureDetector(
            onTap: () {
              setState(() {
                counter = 0;
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 80),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              child: Center(
                  child: Text('Обнулить',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
              width: 200,
              height: 100,
            )),
      ],
    ));
  }
}
