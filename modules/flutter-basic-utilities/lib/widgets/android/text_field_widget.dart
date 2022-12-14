import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.onSubmitted,
    required this.onChanged,
    required this.onDeleted,
    this.padding = 8,
    this.borderRadius = 8,
    this.hintText = "Tìm kiếm",
    this.autocorrect = false,
    this.enableSuggestions = false,
    this.borderRadiusBoxDecoration = 8.0,
    this.textField = "",
    this.isShowSearchButton = true,
    this.textInputAction = TextInputAction.search,
    this.textInputType = TextInputType.text,
    this.maxLength,
    this.labelText,
    this.enableRTLHintText = false,
    this.cursorColor = Colors.blue,
    this.enalbleRTLText = false,
    this.errorText,
    this.controller,
    this.focusNode,
  }) : super(key: key);
  final Function(String value)? onSubmitted;
  final Function(String value) onChanged;
  final Function() onDeleted;
  final double padding;
  final double borderRadius;
  final String hintText;
  final bool enableSuggestions;
  final bool autocorrect;
  final double borderRadiusBoxDecoration;
  final String textField;
  final bool isShowSearchButton;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int? maxLength;
  final String? labelText;
  final bool enableRTLHintText;
  final Color cursorColor;
  final bool enalbleRTLText;
  final String? errorText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = widget.controller ?? TextEditingController();
    textEditingController.text = widget.textField;
    textEditingController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      controller: textEditingController,
      textAlign: TextAlign.start,
      textInputAction: widget.textInputAction,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      keyboardType: widget.textInputType,
      maxLength: widget.maxLength,
      textDirection: widget.enalbleRTLText
          ? ui.TextDirection.rtl
          : ui.TextDirection.ltr,
      style: const TextStyle(
        decoration: TextDecoration.none,
      ),
      onSubmitted: widget.onSubmitted,
      onChanged: (value) {
        widget.onChanged(value);
      },
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          decoration: TextDecoration.none,
          color: Colors.red,
        ),
        hintTextDirection: widget.enableRTLHintText
            ? ui.TextDirection.rtl
            : ui.TextDirection.ltr,
        suffixIcon: textEditingController.text.isEmpty
            ? Visibility(
                visible: widget.isShowSearchButton,
                child: const Icon(
                  Icons.search,
                ),
              )
            : IconButton(
                onPressed: () {
                  widget.onDeleted();
                  setState(() {
                    textEditingController.clear();
                  });
                },
                icon: const Icon(Icons.clear),
              ),
        focusedErrorBorder: InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
    );
  }
}
