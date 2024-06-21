import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/main_router.gr.dart';
import 'package:bottom_navigation_poc/pages/page_template.dart';
import 'package:bottom_navigation_poc/widgets/button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeListingPage extends StatelessWidget {
  const HomeListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      name: 'HomeListingPage',
      additionalContent: Button(
        name: 'ProductDetailsPage',
        onTap: () {
          context.router.push(const ProductDetailsRoute());
        },
      ),
    );
  }
}
