import 'package:flutter/material.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_songs_details_list_view.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_text_field.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_text_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 55),
        Padding(
          padding: EdgeInsets.only(left: 31, right: 33),
          child: CustomTextField(),
        ),
        SizedBox(height: 32),
        CustomTestHomeView(text: "Recently Played"),
        SizedBox(height: 32),
        CustomSongsDetailsListView(),
        SizedBox(height: 31),
        CustomTestHomeView(text: "Recommanded music"),
      ],
    );
  }
}
