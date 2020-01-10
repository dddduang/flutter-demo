import 'package:flutter/material.dart';
import 'right_back_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '右滑返回上一页案例',
      theme: ThemeData(primarySwatch: Colors.red), // theme 有全局和局部两种, 全局是有程序跟 MaterialApp 创建的Theme
      home: RightBackDemo(),
    );
  }
}
