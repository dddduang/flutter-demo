import 'package:flutter/material.dart';
import './asset.dart';

class SearchBarDemo extends StatefulWidget {
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('SearchBarDemo'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),
        onPressed: () {
          showSearch(context: context, delegate: searchBarDelegate());
        })
      ],
    ));
  }
}

class searchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) { // 搜索条右侧的按钮执行方法
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) { // 搜索栏左侧的图标和功能的编写 AnimatedIcon，然后在点击时关闭整个搜索页面
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) { // 搜到到内容后的展现，因为我们的数据都是模拟的，所以我这里就使用最简单的Container+Card组件进行演示了
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(child: Text(query)),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentSuggest : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        )
      ),
    );
  }

}

 