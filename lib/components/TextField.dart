import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;

  const ReuseableTextField({
    super.key,
    required this.label,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
