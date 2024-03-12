import 'package:flutter/material.dart';
import 'package:goystore_app/core/components/payment/payment_failed.dart';
import 'package:goystore_app/core/components/payment/payment_success.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatefulWidget {
  final String paymentUrl;
  const PaymentPage({
    super.key,
    required this.paymentUrl,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late WebViewController _controller = WebViewController();

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (url.contains('status_code=202&transaction_status=deny')) {
              context.push(const PaymentFailedPage());
            }
            if (url.contains('status_code=200&transaction_status=settlement')) {
              context.push(const PaymentSuccessPage());
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),
    );
  }
}