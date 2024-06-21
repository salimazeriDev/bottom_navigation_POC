import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/pages/page_template.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SingleFlowPage extends StatelessWidget {
  const SingleFlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(name: 'SingleFlowPage');
  }
}
