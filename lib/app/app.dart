import 'package:flutter/material.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Page1(),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}
