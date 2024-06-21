import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.name,
    required this.onTap,
    super.key,
  });

  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
    );
  }
}
