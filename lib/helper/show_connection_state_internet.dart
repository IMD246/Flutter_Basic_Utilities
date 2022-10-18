import 'package:flutter/material.dart';

import '../widgets/snackbar_widget.dart';

class ShowConnectionStateInternet {
  showConnectionStateInternet({
    required String content,
    required BuildContext context,
    bool isDisconnectedInternet = false,
    required int count,
  }) async {
    int seconds = isDisconnectedInternet ? 8000 : 3;
    Duration duration = Duration(seconds: seconds);
    var snackBar = snackBarWidget(content: content, duration: duration);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      },
    );
  }
}
