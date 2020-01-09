import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath( // ClipPath 路径裁切控件, 可以把内部的子控件切割, 它有两个主管属性参数(child, clipper)
            clipper: BottomClipper(), // clipper 切割的路径, 这个要和CustomClipper 对象配合使用
            child: Container( // child 要切割的元素, 可以是容器、图片
                color: Colors.deepPurpleAccent, // 给容器设置颜色
                height: 200.0, // 给容器设置高度, 宽度自适应(默认占满屏)
            ),
          )
        ],
      ),
    );
  }
}

// class BottomClipperTest extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, 0.0);
//     path.lineTo(0.0, size.height-30);
//     var firstControlPoint = Offset(size.width / 2, size.height);
//     var firstEndPoint = Offset(size.width, size.height - 30);

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

//     path.lineTo(size.width, size.height - 30);
//     path.lineTo(size.width, 0.0);

//     return path;
//   }
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) { // 我们主要的贝塞尔曲线路径写在 getClip 方法里, 它返回一段路径  一个二阶的贝塞尔曲线是需要控制点和终点的, 控制点就像一块磁铁, 把直线吸引过去, 形成一个完美的弧度, 这个弧度就是贝塞尔曲线了
    // 波浪形的贝塞尔曲线
    var path = Path();
    path.lineTo(0.0, size.height - 20);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 4 * 3, size.height - 80);
    var secondEndPoint = Offset(size.width, size.height - 40);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
