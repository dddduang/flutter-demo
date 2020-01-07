import 'package:flutter/material.dart';
import 'ExpandClosedCase/demo1/expansion_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '展开闭合案例',
      theme: new ThemeData.dark(),
      home: ExpansionTileDemo(),
    );
  }
  
}