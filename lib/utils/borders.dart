import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_sample/utils/utils.dart';

class SimpleBorders extends StatelessWidget {
  SimpleBorders({
    this.width,
    this.height,
    this.widget,
    this.bottom = false,
    this.top = false,
    this.left = false,
    this.right = false,
  });

  final double width;
  final double height;
  final Widget widget;
  final bool bottom;
  final bool top;
  final bool left;
  final bool right;

  final BorderSide side =
      BorderSide(style: BorderStyle.solid, color: ColorPalette().lightGreen300);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: new BoxDecoration(
            border: new Border(
          bottom: bottom ? side : BorderSide.none,
          top: top ? side : BorderSide.none,
          left: left ? side : BorderSide.none,
          right: right ? side : BorderSide.none,
        )),
        child: widget);
  }

  
}