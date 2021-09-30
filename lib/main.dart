import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Bottom Navigation Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const _items = <Widget>[
      Icon(Icons.history, size: 30),
      Icon(Icons.add, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.account_box, size: 30),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellowAccent,
                Colors.yellow,
                Colors.limeAccent,
              ],
              stops: [0.0, 0.3, .8],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        child: CurvedNavigationBar(
          index: 0,
          height: 60.0,
          items: _items,
          color: Colors.greenAccent,
          buttonBackgroundColor: Colors.lightGreenAccent[400],
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {});
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
