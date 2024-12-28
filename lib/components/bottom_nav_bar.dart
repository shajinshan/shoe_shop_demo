import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChanges;
  MyBottomNavBar({super.key, required this.onTabChanges});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: GNav(
          color: Colors.grey[600],
          activeColor: const Color.fromARGB(255, 0, 0, 0),
          tabBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
          tabActiveBorder:
              Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (index) => onTabChanges!(index),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shop,
              text: "Cart",
            ),
          ]),
    );
  }
}
