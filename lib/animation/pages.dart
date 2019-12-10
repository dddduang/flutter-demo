import 'package:flutter/material.dart';
import './custome_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0, // elevation 属性：这个值是AppBar 滚动时的融合程度，一般有滚动时默认是4.0，现在我们设置成0.0，就是和也main完全融合了。
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (BuildContext context) {
            //       return SecondPage();
            //     }
            //   )
            // );
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('SecondPage', style: TextStyle(fontSize: 36.0)),
        backgroundColor: Colors.pinkAccent,
        leading: Container(), // 箭头被隐藏
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}