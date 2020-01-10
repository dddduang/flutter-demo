import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;
  const DraggableWidget({ Key key, this.offset, this.widgetColor }):super(key: key);
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);
  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable( // Draggable 控件负责就是拖拽, 父级使用了Draggable它的子元素就是可以拖动的,子元素可以是容器或者是图片
        data: widget.widgetColor, // data 是要传递的参数, 在 DragTarget里, 会接受这个参数, 当然要在拖拽到DragTarget 的时候
        child: Container( // child 在这里放置你要拖拽的元素, 可以是容器, 也可以是是图片和文字 
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        feedback: Container( // feedback 常用于设置拖拽元素时的样子, 在案例中当拖拽的时候 
          width: 100.0, // 当然你还可以改变它的大小
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5), // 我们把他的颜色透明度变成了50%.
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) { // onDraggableCanceled 是当松开的时候的相应事件, 经常用来推拽时到达的位置
          setState(() { // 改变时用setState 来进行
            this.offset = offset;
          });
        },
      ),
    );
  }
}