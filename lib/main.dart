import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var backgroundColor = Colors.white;
  var toolbarColor = Colors.orange;

  void changeBackgrColor() {
    setState(() {
backgroundColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
  void changeToolbarColor() {
    setState(() {
      toolbarColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: toolbarColor,
        title: Text(widget.title),
      ),
      body: Center(

        child: GestureDetector(
        behavior: HitTestBehavior.opaque,
      onTap: () => changeBackgrColor(),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey there',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
            ),
            ),
            FloatingActionButton.extended(onPressed: changeToolbarColor, label: Text("Change toolbar color"))
          ],
        ),

      ),
// This trailing comma makes auto-formatting nicer for build methods.
    ),
    );

  }
}
