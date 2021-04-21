import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("media query"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer(),
              )
            : Row(
                children: generateContainer(),
              ));
  }

  List<Widget> generateContainer() {
    return <Widget>[
      Container(
        color: Colors.deepOrangeAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.redAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        width: 100,
        height: 100,
      ),
    ];
  }
}
