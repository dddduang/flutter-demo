import 'package:flutter/material.dart';
import 'toolTip/tool_tips_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToolTip控件案例',
      theme: ThemeData.light(),
      home: ToolTipDemo(),
    );
  }
}