import 'package:flutter/material.dart';
import './home_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller; 
  Animation _animation;

  void initState() {
    super.initState();
    // 以下两行代码是用来控制动画的一个典型应用
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500)); // AnimationController 是Animation 的一个子类, 可以控制Animation(控制动画, 比如执行时间等) 有两个参数 vsync: this(垂直同时设置, 使用this就可以了), duration(动画持续时间, 这个可以使用seconds秒, 也可以使用milliseconds毫秒, 工作中经常使用毫秒, 因为秒太粗糙)
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    //  animation.addStatusListener 动画事件监听器,它可以监听到动画的执行状态, 我们这只监听动画是否结束, 如果结束则执行页面跳转动画
    _animation.addStatusListener((status) { 
      if (status == AnimationStatus.completed) { // 如果动画已经完成了, 跳转到 MyHomePage 的页面. AnimationStatus.completed:表示动画已经执行完毕。
        Navigator.of(context).pushAndRemoveUntil ( // pushAndRemoveUntil:跳转页面，并销毁当前控件。
          MaterialPageRoute(builder: (context) => MyHomePage()),
          (route) => route == null);
      }
    });
    _controller.forward(); // 播放动画
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: FadeTransition(
        opacity: _animation,
        child: Container(
          color: Colors.red,
          child: Image.asset('static/timg.jpg'), // 加载本地资源图片
        ),
  //       child: Image.network(
  // 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
  //         scale: 2.0, 
  //         width: 100.0,
  //         //进行缩放
  //         fit:BoxFit.cover  // 充满父容器
  //       ),
      )
    );
  }
}