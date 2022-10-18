import 'package:flutter/material.dart';

import 'loading_screen.dart';


class ShowLoadingParallelScreen {
  void showLoading({required BuildContext context}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        LoadingScreen().show(
          context: context,
          text: "Làm ơn đợi trong giây lát",
        );
      },
    );
  }

  void showLoadingWithoutParralel({required BuildContext context}) {
    LoadingScreen().show(
      context: context,
      text: "Làm ơn đợi trong giây lát",
    );
  }

  void hideLoading() {
    LoadingScreen().hide();
  }
}
