import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  _AlertState createState() => _AlertState();
}


class _AlertState extends State<Alert> {

  final myController = TextEditingController();

  List<String> listViewdata = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
  ];

  void plus(){
    setState(() {
      listViewdata.add(myController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
                children : listViewdata.map((data){
                  return ListTile(
                    title : Text(data),
                  );
                }).toList()
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text("AlertButton"),
              onPressed: (){
                showAlertDialog(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {

    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: (){
        plus();
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("title"),
      content: TextField(
        controller: myController,
        decoration: InputDecoration(hintText: "Input 입력하세요"),
      ),
      actions: [
        okButton,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        }
    );

  }

}