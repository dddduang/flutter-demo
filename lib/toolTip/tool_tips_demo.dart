import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tool')),
      body: Center(
        // child: Tooltip( // 有很多提示控件, 比如Dialog、SnackBar、BottomSheet, 这些操作是重量级的, 存在屏幕上的时间较长或者会直接打断用户的操作
        //   message: 'Don‘t touch me ~ ',
        //   child: Icon(Icons.all_inclusive),
        // ),
        child: Dialog(
          child: Text('data123'),
        ),
      ),
    );
  }
}