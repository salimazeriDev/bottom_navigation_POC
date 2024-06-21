import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/main_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 0,
      routes: const [
        HomeNavigationRoute(),
        SearchNavigationRoute(),
        BasketNavigationRoute(),
        AccountNavigationRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        // no animation
        return child;
      },
      builder: (context, route) {
        return Column(
          children: [
            Flexible(child: route),
            BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: (newIndex) {
                final currentIndex = context.tabsRouter.activeIndex;

                if (currentIndex == newIndex) {
                  // reset tab stack
                } else {
                  context.tabsRouter.setActiveIndex(newIndex);
                }
              },
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Basket',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Account',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
