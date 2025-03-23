import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/assets.dart';
import 'package:music_app/Features/Home/Data/Models/card_model.dart';
import 'package:music_app/Features/Home/Presentation/Views/Widgets/custom_card_item.dart';

class CustomCardListView extends StatelessWidget {
  const CustomCardListView({super.key});
  static List<CardModel> items = [
    CardModel(
      isActive: false,
      image: Assets.imagesDJSNAKE,
      title: "magenta riddim",
      subTitle: "Dj Snake",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesAnneMarie1,
      title: "Friends",
      subTitle: "Anne Marie",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesMarshmello1,
      title: "Alone",
      subTitle: "marshmello",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesDuaLipa1,
      title: "new rules",
      subTitle: "dua lipa",
    ),
    CardModel(
      isActive: false,
      image: Assets.imagesTaylorSwift1,
      title: "you belong with me",
      subTitle: "taylor swift",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomCardItem(cardModel: items[index]);
      },
    );
  }
}
