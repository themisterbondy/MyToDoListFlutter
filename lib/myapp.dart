import 'package:flutter/material.dart';

import 'package:mytodolist/pages/getstartedpage.dart';
import 'package:mytodolist/pages/tasklistpage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: GetStartedPage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (context) => GetStartedPage(),
        '/home': (context) => TaskListPage(),
      },
    );
  }
}
