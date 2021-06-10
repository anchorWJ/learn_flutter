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

class ContentWidget extends StatefulWidget {
  ContentWidget() {
    print("call back 1");
  }

  @override
  State<StatefulWidget> createState() {
    print("call back 7");
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  ContentWidgetState() {
    print ("call back 2");
  }

  @override
  void initState() {
    super.initState();
    print("call back 3");
  }

  @override
  void didChangeDependencies() {
    print("call back 4");
  }

  @override
  void didUpadateWidget() {
    print("call back 5");
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("hello world", style: TextStyle(fontSize: 30),),
    );
  }
}



