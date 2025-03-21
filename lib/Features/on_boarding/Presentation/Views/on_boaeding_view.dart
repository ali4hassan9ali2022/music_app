import 'package:flutter/material.dart';
import 'package:music_app/Core/Widgets/custom_background.dart';
import 'package:music_app/Features/on_boarding/Presentation/Views/Widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomBackground(child: OnBoardingViewBody()));
  }
}
