import 'package:flutter/material.dart';

import 'loading_screen.dart';

class ShowLoadingParallelScreen {
  void showLoading(
      {required BuildContext context, bool isDarkMode = false, String? text}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        LoadingScreen().show(
          context: context,
          text: text ?? "Làm ơn đợi trong giây lát",
          isDarkMode: isDarkMode,
        );
      },
    );
  }

  void showLoadingWithoutParralel(
      {required BuildContext context, bool isDarkMode = false, String? text}) {
    LoadingScreen().show(
      context: context,
      text: text ?? "Làm ơn đợi trong giây lát",
      isDarkMode: isDarkMode,
    );
  }

  void hideLoading() {
    LoadingScreen().hide();
  }
}
