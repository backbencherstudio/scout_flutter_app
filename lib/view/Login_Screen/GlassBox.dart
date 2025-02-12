import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/main.dart';
import 'package:scout_app/view/Login_Screen/Mybuttons.dart';

class Glassbox extends StatelessWidget {
  const Glassbox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: 359,
        height: 333,
        child: Stack(
          children: [
            //blurr effects
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(8),
                    //gradient stuffsssssssss
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.1),
                        Colors.white.withOpacity(0.1),
                      ],
                    )),
              ),
            ),

            //bhitorer jinishpatti
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  //---------------------------------welcome to scout---------------------------------
                  Center(
                      child: Text(
                    "Welcome to Scout",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                  //-----------------------------------discover text-----------------------------
                  Center(
                      child: Text(
                    "Discover and share the best local events",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                        ),
                  )),
                  Center(
                      child: Text(
                    "with your friends.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                        ),
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                  //-----------------------login buttons-------------------------------------------------------
                  Mybuttons(
                    ontap: () {},
                    text: " Continue with Google",
                    color: Color(0xFFFFFFFF),
                    fontColor: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                    img: "assets/login/google.png",
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Center(
                      child: Text(
                    "or",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                        ),
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
