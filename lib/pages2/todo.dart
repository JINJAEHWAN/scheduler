import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("AlertButton"),
          onPressed: ()
          {showAlert(context);},
        ),
      ),
    );
  }
}

  showAlert(BuildContext context){

  AlertDialog alert = AlertDialog(
    title: Text("title"),
    content: Text("Contents"),
    actions: [


    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      }
    );
  }
