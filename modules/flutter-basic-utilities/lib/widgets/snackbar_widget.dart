import 'package:flutter/material.dart';

SnackBar snackBarWidget({
  required String content,
  required Duration duration,
  Color? colorText,
  Color? brColorSnackbar,
}) {
  return SnackBar(
    content: Text(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(color: colorText ?? Colors.white),
    ),
    duration: duration,
    backgroundColor: brColorSnackbar,
  );
}
