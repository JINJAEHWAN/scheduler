import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



import 'pages/basics.dart';
import 'pages2/todo.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scheduler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home_page(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('ko','KR'),
      ],
    );
  }
}
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page>
  with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void dispose(){
    controller!.dispose();
    super.dispose();
  }
  void initState(){
    super.initState();
    controller =TabController(length: 2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('양력과 해야 할 일'),
      ),
      body:TabBarView(
        children: <Widget>[TableBasicsExample(),Alert()],
        controller: controller,
      ),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue),),
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue,))
        ], controller: controller,
      )
    );
  }
}

