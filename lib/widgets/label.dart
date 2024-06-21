import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    required this.name,
    required this.color,
    super.key,
  });

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ColoredBox(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(child: Text(name)),
        ),
      ),
    );
  }
}
