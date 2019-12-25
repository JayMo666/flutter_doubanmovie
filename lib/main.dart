import 'package:flutter/material.dart';
import 'package:flutter_doubanmovie/HotWidget.dart';
import 'package:flutter_doubanmovie/MineWidget.dart';
import 'package:flutter_doubanmovie/MoviesWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆瓣电影',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetItems = [HotWidget(),MoviesWidget(),MineWidget()];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _widgetItems[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.school),title: Text('热映')),
          BottomNavigationBarItem(icon: Icon(Icons.panorama_fish_eye),title: Text('找片')),
          BottomNavigationBarItem(icon: Icon(Icons.people),title: Text('我的')),
        ],
        currentIndex: 0,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      )
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex= index;
    });
  }
}
