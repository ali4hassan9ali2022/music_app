import 'package:go_router/go_router.dart';
import 'package:music_app/Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [GoRoute(path: "/", builder: (context, state) => SplashView())],
  );
}
