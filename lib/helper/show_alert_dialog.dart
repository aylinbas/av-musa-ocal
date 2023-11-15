import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/extension/context_extensions.dart';
import 'package:flutter/material.dart';

showAlertDialog({required BuildContext context, required String message}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            message,
            style: TextStyle(color: context.colorScheme.secondary),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          actions: [
            TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text("Tamam"),
            ),
          ],
        );
      });
}
