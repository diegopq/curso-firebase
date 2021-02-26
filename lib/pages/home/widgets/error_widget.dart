import 'package:flutter/material.dart';

class ErrorCustomWidget extends StatelessWidget {
  const ErrorCustomWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error_outline,
        color: Colors.redAccent,
        size: 20,
      ),
    );
  }
}
