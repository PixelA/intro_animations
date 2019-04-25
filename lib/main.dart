import 'package:flutter/material.dart';
import 'anim/counter_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(title: 'Animations in Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: new Center(child: new CounterAnimator())
      );

    }
    //Create a animation class file 

  }

