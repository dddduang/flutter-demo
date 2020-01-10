import 'package:flutter/material.dart'; // 是Flutter实现Material Design设计风格的基础包,，里面有文本输入框(Text)、图标(Icon)、图片(Image)、行排列布局(Align)、列排列布局(Column)、Decoration、异步、动画等等控件，大家可以理解为网页中的按钮、标题、选项框呀等等控件库吧。
import 'BottomNavigationWidget.dart';

void main()=> runApp(new MyApp()); // main()函数是Dart程序的入口
// 继承（关键字 extends）
class MyApp extends StatelessWidget { // StatelessWidget 无状态类. 当你想展现的内容只需要改动控件本身的配置信息就可以实现的.(例如:文本、图片)
  @override // 继承 StatelessWidget，必须要重写build的方法
  Widget build(BuildContext context) { // 窗口Widget以树形结构组织。 build 方法会携带一个 BuildContext 参数. 可以把Widget想象成一种可视化组件，或者应用中可以与可视化组件进行交互的模块。
    return MaterialApp(  // 返回一个material类的组件对象
      title:'Flutter bottomNavigationBar', // 这个不在窗口中显示
      theme:ThemeData.light(), // ThemeData 是MaterialDesign Widget库的主题数据,Material库的Widget需要遵守相应的涉及规范。 这些涉及规范可自定部分都定义在ThemeData，所以我们可以通过ThemeData来自定义应用主题。 通过Theme.of方法来获取当前的ThemeData. Material Design设计规范中有些是不能自定义的，如导航栏高度，ThemeData只包含了可自定义部分。
      home:BottomNavigationWidget()
    );
  }
}

class Name extends StatefulWidget {  // StatefulWidget具有可变状态(state)的窗口组件（widget）(例如:滚动列表、动画等)
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}