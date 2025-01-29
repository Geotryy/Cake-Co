import 'package:cardapio_app/src/pages/home/home_screen.dart';
import 'package:cardapio_app/src/pages/saved/favorited_screen.dart';
import 'package:cardapio_app/src/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final pageController = PageController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [HomeScreen(), FavoritedScreen()]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: GNav(
              selectedIndex: currentindex,
              gap: 8,
              backgroundColor: AppColors.black,
              color: Colors.white,
              activeColor: AppColors.black,
              tabBackgroundColor: AppColors.rose,
              padding: const EdgeInsets.all(16),
              onTabChange: (index) {
                currentindex = index;
                pageController.jumpToPage(index);
              },
              tabs: [
                GButton(
                  iconSize: size.height * 0.035,
                  icon: CupertinoIcons.house_fill,
                  text: 'Home',
                   textSize: size.height * 0.04,
                ),
                 GButton(
                   iconSize: size.height * 0.035,
                  icon: CupertinoIcons.heart_solid,
                  text: 'Favoritos',
                  textSize: size.height * 0.04,
                )
              ]),
        ),
      ),
    );
  }
}
