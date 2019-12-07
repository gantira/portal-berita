import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './controller.dart';

class WebViewInFlutter extends StatefulWidget {
  final String namaMakanan;
  WebViewInFlutter({
    this.namaMakanan
  });

  @override
  _WebViewInFlutterState createState() => _WebViewInFlutterState();
}

// class _WebViewInFlutterState extends DetailKategoriController {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail Kategori'),
//       ),
//       body: Container(
//         child: Text(widget.namaMakanan),
//       ),
//     );
//   }
// }


class _WebViewInFlutterState extends DetailKategoriController {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.namaMakanan,
      hidden: true,
      appBar: AppBar(title: Text(widget.namaMakanan)),
    );
  }
}