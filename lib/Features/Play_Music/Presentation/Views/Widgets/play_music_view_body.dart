import 'package:flutter/material.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/custom_button_controllor_play_music.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/custom_songs_datails.dart';

class PlayMusicViewBody extends StatelessWidget {
  const PlayMusicViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 98),
          const CustomSongsDetailsPlayMusic(),
          const SizedBox(height: 28),
          CustomButtonControllorPlayMusic(value: 0.6, onChanged: (p0) {}),
        ],
      ),
    );
  }
}
