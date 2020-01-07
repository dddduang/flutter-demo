import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('展开闭合案例标题')),
      body: Center(
        child: ExpansionTile( // ExpansionTile Widget 就是一个可以展开闭合的组件. 常见属性: title、leading、backgroundColor、children、trailing、initialyExpanded
          title: Text('Expansion title'), // 闭合时显示的标题, 这个部分经常使用 Text Widget
          leading: Icon(Icons.ac_unit), // leading 标题左侧图标, 多半用来修饰, 让界面显得美观
          backgroundColor: Colors.red, // backgroundColor 展开时的背景颜色, 也是有过渡动画的, 效果很好
          children: <Widget>[ // children 子元素, 是一个数组, 可以放入多个元素
            ListTile(
              title: Text('List tile'),
              subtitle: Text('subtitle'),
            ),
            ListTile(
              title: Text('List tile'),
              subtitle: Text('subtitle'),
            )
          ],
          initiallyExpanded: true, // 初始状态是否展开, 为true时是展开, 默认为false 不展开
        ),
      ),
    );
  }
}