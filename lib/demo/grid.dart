// import 'package:flutter/material.dart';
// void main () => runApp(MyApp(
//   items: new List<String>.generate(6, (i)=> "Item $i")
// ));

// class MyApp extends StatelessWidget{
//   final List<String> items;
//   MyApp({Key key, @required this.items}):super(key:key);
//   @override
//   Widget build(BuildContext context ){
//       return MaterialApp(
//         title:'ListView widget',
//         home:Scaffold(
//           body:new ListView.builder(
//             itemCount:items.length,
//             itemBuilder:(context,index){
//               return new ListTile(
//                 title:new Text('${items[index]}'),
//               );
//             }
//           )
//         ),
//       );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
          body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        children: <Widget>[
          const Text('NO 1'),
          const Text('NO 2'),
          const Text('NO 3'),
          const Text('NO 4'),
          const Text('NO 5'),
          const Text('NO 6')
        ],
      )),
    );
  }
}
