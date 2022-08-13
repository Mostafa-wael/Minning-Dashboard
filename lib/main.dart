import 'package:flutter/material.dart';
import 'package:minning/left_upper_widget.dart';
import 'package:minning/right_upper_widget.dart';

import 'bottom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.5 / 10,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 6 / 10,
              // color: Colors.amber,
              child: Row(children: const <Widget>[
                LeftUpperWidget(),
                RightUpperWidget()
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 3.5 / 10,
              // color: Colors.blueAccent,
              child: BottomWidget(),
            )
          ],
        ));
  }
}
