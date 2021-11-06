import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  List<String> listViewdata = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: ListView(
            children: [ListView(
              children : listViewdata.map((data){
                return ListTile(
                  title: Text(data),
                  );
                }).toList()
              )],
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text("AlertButton"),
              onPressed: ()
              {showAlert(context);},
            ),
          ),
        ],
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
