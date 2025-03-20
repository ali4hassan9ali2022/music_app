import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/Core/Utils/app_router.dart';

abstract class SplashController {
  static void navigateToHomeView(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kOnBoardingView);
    });
  }
}
