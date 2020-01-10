import 'package:flutter/material.dart';
import './each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView; // 创建视图数组
  int _index = 0; // 数组索引, 通过改变索引值改变视图

  @override
  void initState() { // 为_eachView进行初始化赋值, 重写初始化方法
    super.initState();
    _eachView = List();
    _eachView..add(EachView('Home'))..add(EachView('Me'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _eachView[_index],
      floatingActionButton: FloatingActionButton( // floatingActionButton “FAB”，“可交互的浮动按钮”
        onPressed: (){ // 点击相应事件
          // print(_eachView);
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New Page');
          }));
        }, 
        tooltip: '长按显示的提示文字', // 长按显示的提示文字
        child: Icon(Icons.add, color: Colors.white), // child ：放置子元素，一般放置Icon Widget。
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // 和底栏进行融合
      bottomNavigationBar: BottomAppBar( // BottomAppBar 是 底部工具栏的意思，这个要比BottomNavigationBar widget灵活很多，可以放置文字和图标，当然也可以放置容器。
        color: Colors.lightBlue, // 底部工具栏的颜色
        shape: CircularNotchedRectangle(), // 设置底栏的形状 CircularNotchedRectangle(),有缺口的圆形矩形
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                // print('🏠');
                // setState(() {
                //   _index = 0;
                // });
              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: (){
                // print('🚗');
                // setState(() {
                //   _index = 1;
                // });
              },
            )
          ],
        ),
      ),
    );
  }
}