import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final bool hasBorder;
  final double? width;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.hasBorder = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: const RoundedRectangleBorder(),
        elevation: 4,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
