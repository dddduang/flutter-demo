import 'package:flutter/material.dart';
import 'warp/warp_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '流式布局, 模拟添加照片效果',
      theme: new ThemeData.dark(),
      home: WarpDemo(),
    );
  }
}