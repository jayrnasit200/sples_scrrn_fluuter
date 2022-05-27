import 'dart:async';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: testapp(),
    );
  }
}

class testapp extends StatefulWidget {
  const testapp({Key? key}) : super(key: key);

  @override
  State<testapp> createState() => _testappState();
}

class _testappState extends State<testapp> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("app name")),
      body: Center(child: Text("Welcom back")),
    );
  }
}
