import 'package:flutter/material.dart';

typedef CloseDialog = void Function();

CloseDialog showLoadingDialog({
  required BuildContext context,
  required String text,
}) {
  final dialog = AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(
          height: 10,
        ),
        Text(text),
      ],
    ),
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => dialog,
  );

  return () => Navigator.of(context).pop();
}
