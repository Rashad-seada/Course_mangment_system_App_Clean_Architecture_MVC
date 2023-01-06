import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../config/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (index){

      },
      tabBackgroundColor: CustomTheme.getInstance(context).secondaryColor(),
      tabMargin: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      gap: 4,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      activeColor: Colors.deepOrange, // selected icon and text color
      color: CustomTheme.getInstance(context).txtColor(),
      tabs: const [
        GButton(
          icon: Icons.home_outlined,
          text: 'home',

        ),
        GButton(
          icon: Icons.newspaper_rounded,
          text: 'news',

        ),
        GButton(
            icon: Icons.settings,
            text: 'settings'
        ),
      ],
    );
  }
}
