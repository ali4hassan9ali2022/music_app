import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_styles.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 55)),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 31, right: 33),
            child: CustomTextField(),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              "Recently Played",
              style: AppStyles.styleMedium18(context),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        
      ],
    );
  }
}
