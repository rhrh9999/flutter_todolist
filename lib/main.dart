import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todolist_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  //root of application
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false, //오른쪽 Debug 표시 없애기
      title: 'ToDo App',
      home: Home(),
    );
  }
}

