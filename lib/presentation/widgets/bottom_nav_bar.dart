import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.tabsRouter});
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        backgroundColor: Colors.grey[850],
        selectedItemColor: Colors.amber[500],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            activeIcon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
