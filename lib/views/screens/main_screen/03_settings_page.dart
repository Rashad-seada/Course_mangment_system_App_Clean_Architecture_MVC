import 'package:flutter/material.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/views/screens/auth_screens/00_login_screen.dart';
import 'package:orange_dc/views/screens/settings_screens/00_faq_screen.dart';
import 'package:orange_dc/views/screens/settings_screens/02_our_partners_screen.dart';
import 'package:orange_dc/views/screens/settings_screens/03_support_screen.dart';
import 'package:orange_dc/views/screens/settings_screens/01_terms_screen.dart';
import 'package:orange_dc/views/widgets/setting.dart';
import 'package:orange_dc/views/widgets/show_my_dialog.dart';

import '../../widgets/custom_text.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(fontSize: 34, text: 'Settings',fontWeight: FontWeight.w400,),
                  ],
                ),
                SizedBox(height: 30,),
                
                Setting(
                    title: 'FAQ',
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> FAQScreen())),
                ),

                Setting(
                    title: 'Terms & Conditions',
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> TermsScreen())),
                ),

                Setting(
                    title: 'Our Partenrs',
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> OurPartnersScreen())),
                ),

                Setting(
                    title: 'Support',
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> SupportScreen())),
                ),

                Setting(
                    title: 'Log out',
                    onTap: () => showMyDialog(context),
                ),


              ],
            ),
          )
        )
    );
  }
}
