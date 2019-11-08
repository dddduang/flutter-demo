import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '欢迎来到Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('欢迎来到Flutter-Bar'),
          backgroundColor: const Color.fromRGBO(66, 165, 245, 1.0),
        ),
        body: Center(
          child: Container(
            child: new Image.network(
              'https://pic4.zhimg.com/v2-3be05963f5f3753a8cb75b6692154d4a_1200x500.jpg',
              scale: 1.0,
              fit: BoxFit.scaleDown,
              width: 400.0,
              height: 500.0,
              repeat: ImageRepeat.repeatY,
              color: Colors.lightGreen,
              colorBlendMode: BlendMode.darken,
            ),
            // child: new Text(
            //   '对齐方式123',
            //   maxLines: 1,
            //   textAlign: TextAlign.right,
            //   overflow: TextOverflow.ellipsis,
            //   style: TextStyle(
            //     fontSize: 25.0,
            //     color: Color.fromARGB(255, 255, 255, 255),
            //     decoration: TextDecoration.underline
            //   ),
            // ),
            alignment: Alignment.center,
            // width: 300.0,
            // height: 500.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.pink,Colors.greenAccent,Colors.purple]
              ),
              border: Border.all(width: 6.0, color: Colors.blue)
            ),
          ),
        ),
      ),
    );
  }
}


