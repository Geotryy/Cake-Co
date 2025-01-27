import 'package:cardapio_app/src/pages/home/home_screen.dart';
import 'package:cardapio_app/src/pages/saved/profile_screen.dart';
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
    return Scaffold(
      body: PageView(controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        HomeScreen(),
        ProfileScreen()]),
     bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))),
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
                tabs: const [
                  GButton(
                    icon: CupertinoIcons.house_fill,
                    text: 'Home',
                  ),
              
                  GButton(
                    icon: CupertinoIcons.person_fill,
                    text: 'Perfil',
                  )
                ]),
          ),
        ),
      
    );
  }
}