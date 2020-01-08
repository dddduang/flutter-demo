import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  var currentPanelIndex = -1;
  List<int> mList; // 组成一个int类型的数组, 用来控制索引
  List<ExpandStateBean> expandStateList; // 开展开的状态列表, ExpandStateBean 是自定义类

  _ExpansionPanelListDemoState() { // 构造方法, 调用这个类的时候自动执行
    mList = new List();
    expandStateList = new List();

    for(int i = 0; i < 10; i++) { // 遍历为两个list进行赋值
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand) { // 修改展开与闭合的内部方法
    setState(() {
      expandStateList.forEach((item) { // 遍历可展开的状态列表
        if (item.index == index) {
          item.isOpen = !isExpand; // 取反, 经典的取反方法
        }
      });
    });
  }
    
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion panel list'),
      ),
      body: SingleChildScrollView( // 加入可滚动组件
        child: ExpansionPanelList( // 交互回掉属性, 里面是个匿名函数  ExpansionPanelList 的常见属性是 expansionCallback 和 children
          expansionCallback: (index, bol) { // 调用内部方法. 是点击和交互的回掉事件, 有两个参数, 第一个触发动作的索引, 第二个是布尔类型的触发值
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index) { // 进行map操作, 然后用toList再次组成list.  
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('This is No. $index')
                );
              },
              body: ListTile(
                title: Text('expansion no. $index')
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }

}

class ExpandStateBean{ // 为了方便管理制作一个ExpandStateBean类, 里边就是两个状态, 一个是是否展开isOpen, 另一个是索引值
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}