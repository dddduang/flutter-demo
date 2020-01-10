import 'package:flutter/cupertino.dart'; // Flutter有两套UI模板，一套是material,另一套就是Cupertino
// Cupertino主要针对的的就是IOS系统的UI，所以用的右滑返回上一级就是在这个Cupertino里。
class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center( // 这个和以前使用material的Scaffold类似，不过他里边的参数是child
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeGreen, // 在Cupertino下也有很多Widget控件，他们都是以Cupertino开头的，这就让我们很好区分，当然两种皮肤是可以进行混用的
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context) {
                  return RightBackDemo();
                })
              );
            },
          ),
        ),
      )
    );
  }
}

// 其实只要使用CupertinoPageRoute打开的子页面，就可以实现右滑返回上一级。