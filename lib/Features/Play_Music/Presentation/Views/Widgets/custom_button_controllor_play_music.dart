import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_colors.dart';
import 'package:music_app/Core/Utils/assets.dart';

class CustomButtonControllorPlayMusic extends StatelessWidget {
  const CustomButtonControllorPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(Assets.imagesRandom),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
                AppColors.kThirdPrimaryColor,
                AppColors.kLightWhiteColor,
              ],
            ),
            borderRadius: BorderRadius.circular(36),
          ),
          child: Image.asset(Assets.imagesBack),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.kLightWhiteColor,
          child: Image.asset(Assets.imagesPause),
        ),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
                AppColors.kThirdPrimaryColor,
                AppColors.kLightWhiteColor,
              ],
            ),
            borderRadius: BorderRadius.circular(36),
          ),
          child: Image.asset(Assets.imagesNext),
        ),
        Image.asset(Assets.imagesLoop),
      ],
    );
  }
}
