import 'package:flutter_basic_utilities/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoToWebView extends StatelessWidget {
  const GoToWebView({
    Key? key,
    this.urlhref = "",
    required this.titleWebView,
  }) : super(key: key);
  final String urlhref;
  final String titleWebView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: true,
        title: textWidget(
          text: titleWebView,
          color: Colors.white,
        ),
      ),
      body: WebView(
        initialUrl: urlhref,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
