import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  void showSuccessMessage({
    required String message,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(this);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        showCloseIcon: true,
      ),
    );
  }

  void showErorrMessage({
    required String message,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(this);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        showCloseIcon: true,
      ),
    );
  }
}
