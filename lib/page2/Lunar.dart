import 'package:flutter/material.dart';

class Lunar extends StatefulWidget {
  const Lunar({Key? key}) : super(key: key);

  @override
  _LunarState createState() => _LunarState();
}

class _LunarState extends State<Lunar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('음력'),
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        )
      ),
    );
  }
}
