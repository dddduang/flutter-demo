// 毛玻璃效果制作
import 'package:flutter/material.dart';
import 'FrostedGlassDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '毛玻璃效果制作',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}