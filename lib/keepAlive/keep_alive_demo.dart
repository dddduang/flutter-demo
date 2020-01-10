import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 混入 AutomaticKeepAliveClientMixin, 这是保持状态的关键
// 然后重写 wantKeepAlive 的值为 true 就可以有记忆功能了
class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  @override
  bool get wantKeepAlive => true;

  // 声明一个内部方法, 用来点击按钮后增加数量
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下加1, 点一下加1;'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text('RaisedButton',style: new TextStyle(color: Colors.blue)),
            RaisedButton(
              child: Icon(Icons.remove),
              onPressed: () {
                setState(() { // 检测状态进行减法
                  if (_counter > 0) {
                    _counter--;
                  } else {
                    // print('不能再减少了哦');
                  }
                });
              },
            )
          ],
        ),
      ),
      // 增加一个悬浮按钮, 点击时触犯 _incrementCounter 方法
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}