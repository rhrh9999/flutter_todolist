import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todolist_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

//statelesswidget: 변경상태가 필요하지 않은 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});
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

