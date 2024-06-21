import 'package:bottom_navigation_poc/widgets/label.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({
    required this.name,
    this.additionalContent,
    super.key,
  });

  final String name;
  final Widget? additionalContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Label(
            name: 'Top',
            color: Colors.blue,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 24),
          ),
          if (additionalContent != null) additionalContent!,
          const Label(
            name: 'Bottom',
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
