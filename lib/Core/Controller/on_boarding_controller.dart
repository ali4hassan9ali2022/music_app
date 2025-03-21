import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/Core/Utils/app_router.dart';

abstract class OnBoardingController {
  static void navigateToHomeViewView(BuildContext context) {
    GoRouter.of(context).push(AppRouter.kMainView);
  }
}
