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
    HomeView(),
    SizedBox(),

    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  int selectIndex = 0;
  late PageController pageController = PageController();
  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: AppColors.kThirdPrimaryColor,
        backgroundColor: AppColors.kDarkBlueColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.align_horizontal_left),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
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
