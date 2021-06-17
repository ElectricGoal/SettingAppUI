import 'package:flutter/material.dart';
import 'package:setting_app/setting_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        //primarySwatch: Colors.blue,
      ),
      home: HomeSetting(),
    );
  }
}
