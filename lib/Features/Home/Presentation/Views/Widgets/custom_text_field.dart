import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffB1AFE9),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 24, right: 4),
          child: Icon(Icons.search, color: Colors.white, size: 17),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        hintText: "Search Song",
        hintStyle: AppStyles.styleRegular12(context),
      ),
    );
  }
}