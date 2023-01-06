import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:orange_dc/views/screens/main_screen/02_news_page.dart';
import 'package:orange_dc/views/screens/main_screen/03_settings_page.dart';
import '../../../config/app_colors.dart';
import '01_home_page.dart';

class MainLayout extends StatefulWidget {
  MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: PageView(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: (index){
              currentIndex = index;
              setState(() {

              });
            },
            children: const [

              HomePage(),

              NewsPage(),

              SettingPage()

            ],
          ),
          bottomNavigationBar: GNav(
            selectedIndex: currentIndex,
            onTabChange: (index){
              currentIndex = index;
              controller.jumpToPage(index);
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
          ),
        )
    );
  }
}
