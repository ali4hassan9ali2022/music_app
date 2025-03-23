import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_styles.dart';
import 'package:music_app/Core/Utils/assets.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(Assets.imagesDJSNAKE),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("magenta riddim", style: AppStyles.styleMedium15(context)),
          const SizedBox(height: 4),
          Text("magenta riddim", style: AppStyles.styleMedium12(context)),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_outline, color: Colors.red),
      ),
    );
  }
}
