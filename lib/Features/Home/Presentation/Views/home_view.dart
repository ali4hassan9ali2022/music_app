

import 'package:flutter/material.dart';
import 'package:music_app/Core/Widgets/custom_background.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackground(child: HomeViewBody()),
    );
  }
}