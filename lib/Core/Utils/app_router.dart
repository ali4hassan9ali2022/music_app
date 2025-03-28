import 'package:go_router/go_router.dart';

import 'package:music_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/play_music_view.dart';
import 'package:music_app/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:music_app/Features/on_boarding/Presentation/Views/on_boaeding_view.dart';
import 'package:music_app/main_view.dart';

abstract class AppRouter {
  static final kOnBoardingView = "/OnBoardingView";
  static final kHomeView = "/HomeView";
  static final kMainView = "/MainView";
  static final kPlayView = "/PlayView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kMainView, builder: (context, state) => const MainView()),
      GoRoute(
        path: kPlayView,
        builder: (context, state) => const PlayMusicView(),
      ),
    ],
  );
}
