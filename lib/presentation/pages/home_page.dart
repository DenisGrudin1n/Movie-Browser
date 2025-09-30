import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_browser/presentation/routes/router.gr.dart';
import 'package:movie_browser/presentation/widgets/bottom_nav_bar.dart';
import 'package:movie_browser/presentation/widgets/movie_appbar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [MoviesRoute(), FavoritesRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: MovieAppBar(tabsRouter: tabsRouter),
          body: child,
          bottomNavigationBar: BottomNavBar(tabsRouter: tabsRouter),
        );
      },
    );
  }
}
