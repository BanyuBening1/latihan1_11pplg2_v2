import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bordercolor;
  final Color textColor;

  const ReuseableButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.bordercolor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bordercolor,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}
