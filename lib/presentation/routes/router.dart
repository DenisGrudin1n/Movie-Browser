import 'package:auto_route/auto_route.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MoviesRoute.page, initial: true),
    AutoRoute(page: MoviesDetailsRoute.page, path: '/movie-details/:id'),
    AutoRoute(page: FavoritesRoute.page),
  ];
}
