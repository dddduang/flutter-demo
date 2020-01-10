import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget { //继承与动态组件
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  List<Widget> list; // 声明一个list数组

  @override
  void initState() { // 初始化状态, 给list添加值, 这时候调用了一个自定义方法 `buildAddButton`
    super.initState();
    list = List<Widget>()..add(buildAddButton())..add(reduceButton());
  }

  @override
  Widget build(BuildContext context) {  
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Wrap流式布局')),
      body: Center(
        child: Container(
          width: width / 1.32, // width / height 代表满屏的宽度或者高度
          height: height/2,
          color: Colors.grey, // 给改盒子的颜色
          child: Wrap( // 流式布局
            children: list,
            spacing: 10.0, // 设置间距
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() { // 返回一个手势Widget，只用用于显示事件
    // 返回一个手势Widget, 只用于显示事件
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(0, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 60.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(child: Text('照片')),
      ),
    );
  }

  Widget reduceButton() { // 删除图片
    // 返回一个手势Widget, 只用于显示事件
    return GestureDetector(
      onTap: () {
        if (list.length > 2) {
          setState(() {
            setState(() {
              // print(list.length);
              list.removeAt(0);
            });
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 60.0,
          color: Colors.black54,
          child: Icon(Icons.delete),
        ),
      ),
    );
  }

}

