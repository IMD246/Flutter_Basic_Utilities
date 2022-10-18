import 'package:flutter_basic_utilities/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget rowTextWidget({
  required String? textTitle,
  Color colorTitle = Colors.black54,
  required String? textPrice,
  Color colorPrice = Colors.black,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      textWidget(
        text: textTitle ?? "",
        color: colorTitle,
      ),
      textWidget(
        text: "${textPrice ?? "0"} đ",
        color: colorPrice,
      ),
    ],
  );
}
