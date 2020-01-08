import 'package:flutter/material.dart';
import 'ExpandClosedCase/demo2/ExpansionPanelListDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '展开闭合列表案例',
      theme: new ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
} 