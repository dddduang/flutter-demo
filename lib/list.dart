import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '欢迎来到Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('欢迎来到Flutter-Bar123'),
            backgroundColor: const Color.fromRGBO(66, 165, 245, 1.0),
          ),
          body: Center(
            child: Container(
                height: 500.0,
                child: new ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    new Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.lightBlue,
                    ),
                    new Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.amber,
                    ),
                    new Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.deepOrange,
                    ),
                    new Container(
                      width: 200.0,
                      height: 200.0,
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                )),
          )
          // body: new ListView(
          //   children: <Widget>[
          //     new ListTile(
          //       leading: new Icon(Icons.access_time),
          //       title: new Text('access_time'),
          //     ),
          //     new ListTile(
          //       leading: new Icon(Icons.account_balance),
          //       title: new Text('account_balance'),
          //     ),
          //     new Image.network('https://profile.csdnimg.cn/1/0/A/3_weixin_43996061'),
          //     new Image.network('http://cdn.gosafenet.com/static/fcnp/img-01.png'),
          //     new Image.network('https://profile.csdnimg.cn/1/0/A/3_weixin_43996061')
          //   ],
          // )
          ),
    );
  }
}

