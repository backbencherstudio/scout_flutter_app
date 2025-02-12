import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/profile_setting_ui/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_ui/widgets/custom_info_container.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              CustomAppBar(
                title: "Account Settings",
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFFB6012), width: 1.5),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/event/event_01.png",
                        width: 56.0,
                        height: 56.0,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          // Show the icon in case of an error
                          return Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 56.0,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "John Doe",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "@johnnyboi",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF25282A)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF5F0),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/msg.png"),
                      size: 24,
                    ),
                    SizedBox(width: 12.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Share feedback",style: Theme.of(context).textTheme.bodyMedium,),
                        Text("Help us improve your experience!",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text("Information",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/images/details.png",title: "My Details",onTap: (){},),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/images/star.png",title: "My Interests",onTap: (){},),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/images/share.png",title: "Social Links",onTap: (){},),
              SizedBox(height: 24.h,),
              Text("Preferences",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/images/privacy.png",title: "Account Privacy",onTap: (){},),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/images/notification.png",title: "Notifications",onTap: (){},),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/images/theme.png",title: "Theme",onTap: (){},),
              SizedBox(height: 24.h,),
              Text("Security",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/images/password.png",title: "Update Password",onTap: (){},),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/images/signout.png",title: "Sign Out",onTap: (){},),
              SizedBox(height:16.h,),
            ],
          ),
        ),
      ),
    );
  }
}


