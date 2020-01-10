import 'package:flutter/material.dart';
import 'draggable/draggable_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '节Draggable控件实例',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DraggableDemo(),
    );
  }  
}
