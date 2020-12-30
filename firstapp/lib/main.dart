import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Home Page'), //시작홈을 정의
    );
  }
}

class MyHomePage extends StatefulWidget { //홈페이지 부분
  MyHomePage({Key key, this.title}) : super(key:key); //타이틀을 가져온다.
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Container();
  }
}

