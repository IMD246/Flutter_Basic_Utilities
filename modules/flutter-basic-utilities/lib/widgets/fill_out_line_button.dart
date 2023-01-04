import 'package:flutter/material.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    required this.press,
    this.minWidth = 5,
    required this.text,
    this.color = Colors.transparent,
    this.colorText = Colors.black,
    this.paddingText = 20,
  }) : super(key: key);
  final VoidCallback? press;
  final String text;
  final double minWidth;
  final Color color;
  final Color colorText;
  final double paddingText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(
          color: Colors.white,
          width: 0,
        ),
      ),
      elevation: 0.5,
      color: color,
      onPressed: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: paddingText,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
