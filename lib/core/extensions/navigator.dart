import 'package:flutter/material.dart';

/// Navigator
extension NavigatorContextExt on BuildContext {
  void pushPage(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  void pushReplacementPage(Widget page) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  void pushAndRemoveUntilPage(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }

  void popPage() {
    Navigator.of(this).pop();
  }

  void popPageResult(result) {
    Navigator.of(this).pop(result);
  }
}