import 'package:flutter/material.dart';
import 'package:flutter_basic_utilities/widgets/text_widget.dart';

Widget textWithLine({
  String text = "",
  Color color = Colors.green,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: color,
          width: 3,
        ),
      ),
    ),
    child: textWidget(text: text, size: 14),
  );
}
