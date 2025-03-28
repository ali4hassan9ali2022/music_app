import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_styles.dart';
import 'package:music_app/Core/Utils/assets.dart';

class CustomSongsDetailsItem extends StatelessWidget {
  const CustomSongsDetailsItem({super.key, required this.onTap});
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSongsImage(),
          const SizedBox(height: 9),
          Text("Who Says", style: AppStyles.styleMedium15(context)),
          const SizedBox(height: 4),
          Text("Selena Gomez", style: AppStyles.styleMedium12(context)),
        ],
      ),
    );
  }
}

class CustomSongsImage extends StatelessWidget {
  const CustomSongsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        Assets.imagesTest,
        fit: BoxFit.cover,
        height: 151,
        width: 151,
      ),
    );
  }
}
