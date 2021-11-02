import 'package:flutter/material.dart';

import '../pages/basics.dart';

class lift extends StatefulWidget {
  const lift({Key? key}) : super(key: key);

  @override
  _liftState createState() => _liftState();
}

class _liftState extends State<lift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('캘린더'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const SizedBox(height: 20.0),
                ElevatedButton(
                  child: Text('Basics'),
                  onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TableBasicsExample()),
                  ),
                )
              ]
          )
        )
    );
  }
}
