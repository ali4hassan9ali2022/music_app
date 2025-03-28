import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/Core/Utils/app_router.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_songs_details_item.dart';

class CustomSongsDetailsListView extends StatelessWidget {
  const CustomSongsDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 17);
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomSongsDetailsItem(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kPlayView);
              },
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
