import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: SafeArea(
          child: Column(
              //수직 축 정렬 여부
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //메인축 정렬 여부
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Center(
                  child: Text(
                    'one',
                    style: TextStyle(backgroundColor: Colors.red),
                  ),
                ),
                Text(
                  'two',
                  style: TextStyle(backgroundColor: Colors.green, ),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'three',
                  style: TextStyle(backgroundColor: Colors.yellow),
                ),
              ])),
    );
  }
}
