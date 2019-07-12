import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: CoffeeCounterWidget()),
      ),
    );
  }
}

class CoffeeCounterWidget extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: <Widget>[
          Text('$_counter'),
          RaisedButton(
            onPressed: () {
              _counter += 1;
            },
            child: Text('I drank a cup of coffee'),
          ),
        ],
      ),
    );
  }
}