import 'package:flutter/material.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/custom_button_controllor_play_music.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/custom_songs_datails.dart';

class PlayMusicViewBody extends StatelessWidget {
  const PlayMusicViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 98),
          CustomSongsDetailsPlayMusic(),
          SizedBox(height: 28),
          CustomButtonControllorPlayMusic(),
        ],
      ),
    );
  }
}
