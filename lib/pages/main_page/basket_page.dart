import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/main_router.gr.dart';
import 'package:bottom_navigation_poc/pages/page_template.dart';
import 'package:bottom_navigation_poc/widgets/button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      name: 'BasketPage',
      additionalContent: Button(
        name: 'ProductDetailsPage',
        onTap: () {
          context.router.push(const ProductDetailsRoute());
        },
      ),
    );
  }
}
