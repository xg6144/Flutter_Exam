import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {//Stateless는 바뀌지 않는다.
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
   //내부 변수 의미
  MyHomePage({Key key, this.title}) : super(key:key); //타이틀을 가져온다.
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),), //widget을 이용해 title을 가져온다.
      body: Center( //가운데 정렬
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.display1,)
        ],), //LineayLayout과 비슷한 구조로 생성
      ), floatingActionButton: FloatingActionButton(
      onPressed: _increaseCounter,
      tooltip: 'Increase',
      child: Icon(Icons.add),
    ),
    );
  }

  void _increaseCounter() {
    _counter++;
  }
}

