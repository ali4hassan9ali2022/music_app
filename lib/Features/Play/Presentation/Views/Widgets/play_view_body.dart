import 'package:flutter/material.dart';
import 'package:music_app/Features/Play/Presentation/Views/Widgets/custom_songs_datails.dart';

class PlayViewBody extends StatelessWidget {
  const PlayViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(children: [SizedBox(height: 98), CustomSongsDetailsPlay(), Row(
        children: [
          
        ],
      )]),
    );
  }
}
