import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestures',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(child: GestureDetector(
        onTap: () => _showDialog(context),
        child: Text('Hello World', style: TextStyle(fontSize: 40),),
      ),),
    );
  }

  void _showDialog(BuildContext context) {
    print('Tap done');
    showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Hello'),
            content: Text(
                'Welcome Here to AlertDialog and GestureDetector Example. Hope you understand this.'),
            actions: [
              FlatButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text('close'))
            ],
          );
        });
  }
}
/*
  class _MyHomePageState extends State {

  @override
  Widget build(BuildContext context) {
  return Scaffold(

  );
  }
  }*/
