import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/theme_tile.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/theme_screen_provider.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/social_media_tile.dart';

import '../../../widgets/primary_button.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Social Links"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Consumer<ThemeScreenProvider>(
                  builder: (context, themeProvider, child) {
                return ThemeTile(
                  imagePath: "assets/icons/light_mode.png",
                  title: "Light mode",
                  onTap: () {
                    themeProvider.selectTheme(0);
                  },
                );
              }),
              SizedBox(
                height: 12.h,
              ),
              Consumer<ThemeScreenProvider>(
                  builder: (context, themeProvider, child) {
                return ThemeTile(
                  imagePath: "assets/icons/dark_mode.png",
                  title: "Light mode",
                  onTap: () {
                    themeProvider.selectTheme(1);
                  },
                );
              }),
              // SizedBox(height: 12.h,),
              Consumer<ThemeScreenProvider>(
                  builder: (context, themeProvider, child) {
                return ThemeTile(
                  imagePath: "assets/icons/system_default.png",
                  title: "System Default",
                  onTap: () {
                    themeProvider.selectTheme(2);
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
