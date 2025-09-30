import 'package:auto_route/auto_route.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(path: 'movies', page: MoviesRoute.page, initial: true),
        AutoRoute(path: 'favorites', page: FavoritesRoute.page),
      ],
    ),
    AutoRoute(path: '/movie-details/:id', page: MovieDetailsRoute.page),
  ];
}
