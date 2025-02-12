import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/profile_setting_ui/widgets/custom_app_bar.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CustomAppBar(title: "Account Settings",),
              SizedBox(height: 32.h,),
              Row(
                children: [
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFFB6012),width: 1.5),
                      image: DecorationImage(image: AssetImage("assetName"))
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

