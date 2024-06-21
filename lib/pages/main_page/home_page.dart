import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/main_router.gr.dart';
import 'package:bottom_navigation_poc/pages/page_template.dart';
import 'package:bottom_navigation_poc/widgets/button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      name: 'HomePage',
      additionalContent: Column(
        children: [
          Button(
            name: 'Single Flow Page',
            onTap: () {
              context.router.push(const SingleFlowRoute());
            },
          ),
          Button(
            name: 'BasketPage',
            onTap: () {
              context.router.push(const BasketRoute());
            },
          ),
          Button(
            name: 'HomeListingPage',
            onTap: () {
              context.router.push(const HomeListingRoute());
            },
          ),
        ],
      ),
    );
  }
}
