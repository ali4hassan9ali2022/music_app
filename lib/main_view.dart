import 'package:flutter/material.dart';
import 'package:music_app/Core/Utils/app_colors.dart';
import 'package:music_app/Features/Home/Presentation/Views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    const Scaffold(),
    const HomeView(),

    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  int selectIndex = 1;
  late PageController pageController = PageController();
  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        selectedItemColor: AppColors.kThirdPrimaryColor,
        backgroundColor: AppColors.kDarkBlueColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: onItemTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.align_horizontal_left),
            label: "",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
      body: PageView.builder(
        itemCount: pages.length,
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
