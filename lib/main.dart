import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);

    animation =
    new CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addListener(() {
        setState(() {});
        debugPrint("Running ${controller.value}");
      });
    controller.forward();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Text('Hello World',
          style: TextStyle(
            fontSize: 19.0 * animation.value
          ),),

        ),
      );


    }
    @override
  void dispose() {
    // TODO: implement dispose
      controller.dispose();
    super.dispose();
  }
  }

