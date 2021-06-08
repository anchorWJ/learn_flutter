import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("yeyeye"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "hello world",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 20,
            backgroundColor: Color.fromARGB(120, 120, 120, 120)
        ),
      ),
    );
  }
}

class
