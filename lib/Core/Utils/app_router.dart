import 'package:go_router/go_router.dart';

import 'package:music_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:music_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:music_app/Features/on_boarding/Presentation/Views/on_boaeding_view.dart';
import 'package:music_app/main_view.dart';

abstract class AppRouter {
  static final kOnBoardingView = "/OnBoardingView";
  static final kHomeView = "/HomeView";
  static final kMainView = "/MainView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => MainView(),
      ),
    ],
  );
}
