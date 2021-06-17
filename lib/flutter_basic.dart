import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
    return LoginWidget();
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  String name = "";
  String password = "";

  GlobalKey<FormState> formGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formGlobalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              obscureText: false,
              decoration: const InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "User"
              ),
              onSaved: (value) {name = value as String;},
              validator: (value) {
                return value == null || value.isEmpty ? "can not be empty" : null;
              },
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              obscureText: true,
              decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password"
              ),
              onSaved: (value) {password = value as String;},
              validator: (value) {
                return value == null || value.isEmpty ? "can not be empty" : null;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {formGlobalKey.currentState?.save(); log("log: $name $password");},
                  child: const Text("Submit", style: TextStyle(fontSize: 20),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RegisterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterWidgetState();
  }
}

class RegisterWidgetState extends State<RegisterWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      log("controller: ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
                icon: Icon(Icons.people),
                labelText: "Enter",
                hintText: "password",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2)
                )
            ),
            onChanged: (value) {log("time: $value");},
            onSubmitted: (value) {log("submit: $value");},
            controller: textEditingController,
          )
        ],
      ),
    );
  }
}

class RadiusImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network("https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png",
          width: 150, height: 150,
        ),
      ),
    );
  }
}

class CircleImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network("https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png",
        width: 150, height: 150,
      ),
    );
  }
}

class AssetsImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/image/1.png");
  }
}

class NetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 200,
        color: Colors.amberAccent,
        child: Image.network(
          "https://zos.alipayobjects.com/rmsportal/jkjgkEfvpUPVyRjUImniVslZfWPnJuuZ.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () => ("123"), child: const Text("Button"),),
        MaterialButton(onPressed: () {}, child: const Text("Button"),),
        BackButton(onPressed: () {}),
        const CloseButton(color: Colors.deepOrange,),
        CupertinoButton(child: const Text("Button"), onPressed: () {}),
      ],
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "The analyzer produces this diagnostic when a method or \n"
          "function invocation has a named argument, but the method\n"
          " or function being invoked doesn’t define a parameter with \n"
          "the same name.",
      style: TextStyle(
          fontSize: 30,
          color: Color(0xffff0000)
      ),
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}

