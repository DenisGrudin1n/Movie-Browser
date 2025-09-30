import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MovieAppBar({super.key, required this.tabsRouter});
  final TabsRouter tabsRouter;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        tabsRouter.activeIndex == 0 ? 'Movie Browser' : 'Favorites',
        style: TextStyle(fontSize: 20.sp),
      ),
      centerTitle: true,
    );
  }
}
