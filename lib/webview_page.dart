import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VNSHOP'),
      ),
      body: WebView(
        initialUrl: 'https://vnshop.top/',
        javascriptMode: JavascriptMode.unrestricted, // Đảm bảo enum này có sẵn
        onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
        },
        ),
    );
  }
}


