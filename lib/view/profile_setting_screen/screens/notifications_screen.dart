import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/account_privacy_screen%20_provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/notifications_screen_provider.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
   NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Account Privacy"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text("New Followers",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Transform.scale(
                    scale: 0.75,
                    child: Consumer<NotificationsScreenProvider>(
                      builder: (context,notificationScreenProvider,child) {
                        return Switch(
                          thumbIcon: WidgetStateProperty.all(
                            Icon(Icons.circle, size: 20,color: Colors.white,), // Fixed icon with fixed size
                          ),
                          activeColor: Colors.green,
                          inactiveTrackColor: Color(0xFFC6CACD) ,
                          activeTrackColor: Color(0xFFFB6012) ,
                          trackOutlineColor: WidgetStateColor.transparent,
                          thumbColor: const WidgetStatePropertyAll<Color>(Colors.white),
                          value: notificationScreenProvider.isNewFollowerSwitchOn,
                          onChanged: (bool value) {
                            notificationScreenProvider.toggleNewFollowerSwitch(value);
                          },
                        );
                      }
                    ),
                  ),
                  SizedBox(height: 24.h,),

                ],
              ),
              Row(
                children: [
                  Text("New Events",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Transform.scale(
                    scale: 0.75,
                    child: Consumer<NotificationsScreenProvider>(
                      builder: (context,notificationScreenProvider,child) {
                        return Switch(
                          thumbIcon: WidgetStateProperty.all(
                            Icon(Icons.circle, size: 20,color: Colors.white,), // Fixed icon with fixed size
                          ),
                          activeColor: Colors.green,
                          inactiveTrackColor: Color(0xFFC6CACD) ,
                          activeTrackColor: Color(0xFFFB6012) ,
                          trackOutlineColor: WidgetStateColor.transparent,
                          thumbColor: const WidgetStatePropertyAll<Color>(Colors.white),
                          value: notificationScreenProvider.isNewEventSwitchOn,
                          onChanged: (bool value) {
                            notificationScreenProvider.toggleNewEventSwitch(value);
                          },
                        );
                      }
                    ),
                  ),
                  SizedBox(height: 24.h,),

                ],
              ),
            ]
          ),
        )
      ),
    );
  }
}
