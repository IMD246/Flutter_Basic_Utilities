import 'package:flutter/material.dart';

import '../widgets/snackbar_widget.dart';

class ShowSnackbarScaffold {
  showSnackbar({
    required String content,
    required BuildContext context,
    Color? colorText,
    Color? brColorSnackbar,
    int? seconds, 
  }) async {
    var snackBar = snackBarWidget(
      content: content,
      brColorSnackbar: brColorSnackbar,
      colorText: colorText,
      duration: Duration(
        seconds: seconds ?? 2,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
