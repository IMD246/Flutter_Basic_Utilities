import 'package:flutter_basic_utilities/widgets/text_widget.dart';
import 'package:flutter/material.dart';

AppBar appbarWidget({
  Color bgColorAppbar = Colors.red,
  String? title,
  Color colorTitle = Colors.white,
  bool centerTitle = false,
  bool showBackButton = true,
  List<Widget>? listWidget,
}) {
  return AppBar(
    backgroundColor: Colors.red,
    automaticallyImplyLeading: showBackButton,
    actions: listWidget,
    title: textWidget(
      text: title ?? "",
      color: Colors.white,
    ),
    centerTitle: centerTitle,
  );
}
