import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/home_screen/widgets/tab_bar_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello John",
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.w, left: 5.w),
            child: Icon(
              Icons.notifications_outlined,
              size: 24,
              color: Color(0xff111315),
            ),
          )
        ],
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8,
                    children: [
                      GestureDetector(
                        onTap:(){
                          debugPrint("\nTab bar pressed\n");
                        },
                        child: TabBarDesign(text: "For You", isSelected: true),
                      ),
                      GestureDetector(
                        onTap:(){
                          debugPrint("\nTab bar pressed\n");
                        },
                        child: TabBarDesign(text: "Friends", isSelected: false),
                      ),
                      GestureDetector(
                        onTap:(){
                          debugPrint("\nTab bar pressed\n");
                        },
                        child: TabBarDesign(text: "Today", isSelected: false),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
