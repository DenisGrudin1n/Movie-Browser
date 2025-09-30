import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_browser/presentation/routes/router.dart';
import 'package:movie_browser/utils/constants.dart';
import 'package:provider/provider.dart';

import 'injection.dart' as di;
import 'presentation/providers/movies_provider.dart';
import 'presentation/providers/favorites_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await di.init();
  runApp(const MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        Constants.referenceWidth,
        Constants.referenceHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      ensureScreenSize: true,
      enableScaleText: () => false,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => di.sl<MoviesProvider>()),
          ChangeNotifierProvider(create: (_) => FavoritesProvider()),
        ],
        child: MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
