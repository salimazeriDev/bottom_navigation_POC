import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_poc/main_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class MainRouter extends $MainRouter {
  MainRouter();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: MainRoute.page,
      path: '/',
      initial: true,
      children: [
        AdaptiveRoute(
          page: HomeNavigationRoute.page,
          children: [
            AdaptiveRoute(
              page: HomeRoute.page,
              path: '',
            ),
            AdaptiveRoute(
              page: HomeListingRoute.page,
            ),
            AdaptiveRoute(
              page: BasketRoute.page,
            ),
            AdaptiveRoute(
              page: ProductDetailsRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          page: SearchNavigationRoute.page,
          children: [
            AdaptiveRoute(
              page: SearchRoute.page,
              path: '',
            ),
          ],
        ),
        AdaptiveRoute(
          page: BasketNavigationRoute.page,
          children: [
            AdaptiveRoute(
              page: BasketRoute.page,
              path: '',
            ),
            AdaptiveRoute(
              page: ProductDetailsRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(
          page: AccountNavigationRoute.page,
          children: [
            AdaptiveRoute(
              page: AccountRoute.page,
              path: '',
            ),
          ],
        ),
      ],
    ),
    AdaptiveRoute(
      page: SingleFlowRoute.page,
    ),
  ];
}
