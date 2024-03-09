import 'package:flutter/material.dart';
import 'package:goystore_app/core/extensions/navigator.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;

  const CustomDialog({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
