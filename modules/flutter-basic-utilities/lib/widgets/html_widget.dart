import 'dart:ui';

import 'package:flutter_html/flutter_html.dart';

Html htmlWidget(String? data, Size size) {
  return Html(
    data: data ?? "",
    style: {
      "p": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
      "span": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
      "strong": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
      "li": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
      "em": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
      "h2": Style(
        fontSize: FontSize(
          size.height * 0.01,
          Unit.px,
        ),
      ),
    },
  ); //open image in webview, or launch image in browser, or any other logic here
}
