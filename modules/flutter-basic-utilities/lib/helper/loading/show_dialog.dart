import 'package:flutter/material.dart';

import '../../widgets/fill_out_line_button.dart';
import '../../widgets/text_widget.dart';

class UtilesDialog {
 Future showAlertDialog({
    required BuildContext context,
    required String content,
    required String contentButtonYes,
    required String contentButtonNo,
    required void Function(BuildContext context) onPressYes,
    required void Function() onPressNo,
    Widget? contextDescription,
    bool preventUnfocusHideDialog = true,
    bool isShowButtonNo = true,
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: preventUnfocusHideDialog,
      builder: (dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Column(
                children: [
                  textWidget(
                    textAlign: TextAlign.center,
                    text: content,
                    size: 15,
                    maxLines: 2,
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ),
                  contextDescription ?? const Text(""),
                ],
              ),
              Row(
                mainAxisAlignment: isShowButtonNo
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: isShowButtonNo,
                    child: FillOutlineButton(
                      paddingText: 0,
                      press: () {
                        onPressNo();
                        Navigator.of(dialogContext).pop();
                      },
                      color: Colors.white70,
                      text: contentButtonNo,
                      colorText: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  FillOutlineButton(
                    paddingText: 0,
                    press: () {
                      onPressYes(context);
                      Navigator.of(dialogContext).pop();
                    },
                    color: Colors.redAccent,
                    text: contentButtonYes,
                    colorText: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
