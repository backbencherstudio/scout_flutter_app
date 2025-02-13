import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';

class AccountPrivacyScreen extends StatefulWidget {
   AccountPrivacyScreen({super.key});

  @override
  State<AccountPrivacyScreen> createState() => _AccountPrivacyScreenState();
}

class _AccountPrivacyScreenState extends State<AccountPrivacyScreen> {
  bool light = false;


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
                  Text("Private account",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Transform.scale(
                    scale: 0.75,
                    child: Switch(
                      thumbIcon: WidgetStateProperty.all(
                        Icon(Icons.circle, size: 20,color: Colors.white,), // Fixed icon with fixed size
                      ),
                      activeColor: Colors.green,
                      inactiveTrackColor: Color(0xFFC6CACD) ,
                      activeTrackColor: Color(0xFFFB6012) ,
                      trackOutlineColor: WidgetStateColor.transparent,
                      thumbColor: const WidgetStatePropertyAll<Color>(Colors.white),
                      value: light,
                      onChanged: (bool value) {
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 24.h,),

                ],
              ),
              Text("When your account is public, others will be able to see your profile, events you have created and ones you have marked as “interested”.",
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 5,
                softWrap: true,
              )

            ]
          ),
        )
      ),
    );
  }
}
