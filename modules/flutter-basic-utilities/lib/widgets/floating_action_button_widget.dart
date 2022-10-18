import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    Key? key,
    required this.press,
    required this.widget, this.backgroundColor,
  }) : super(key: key);

  final VoidCallback press;
  final Widget widget;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? Colors.cyan.withOpacity(0.7),
      onPressed: press,
      child: widget,
    );
  }
}
