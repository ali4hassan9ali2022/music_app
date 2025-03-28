import 'package:flutter/material.dart';
import 'package:music_app/Core/Widgets/custom_background.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/custom_app_bar_play.dart';
import 'package:music_app/Features/Play_Music/Presentation/Views/Widgets/play_music_view_body.dart';

class PlayMusicView extends StatelessWidget {
  const PlayMusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlay(),
      body: CustomBackground(child: PlayMusicViewBody()),
    );
  }
}
