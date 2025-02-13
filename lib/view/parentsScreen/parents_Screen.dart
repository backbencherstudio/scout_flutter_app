import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParentsScreen extends StatefulWidget {
  const ParentsScreen({super.key});

  @override
  State<ParentsScreen> createState() => _ParentsScreenState();
}

class _ParentsScreenState extends State<ParentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("parents Screen"),
        ),
        body: Text("bottom navbar"),
        bottomNavigationBar: BottomNavigationBar(
            items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home_icon.png",
                width: 32.w,
                height: 32.h,
                fit: BoxFit.cover,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/search.png",
                width: 32.w,
                height: 32.h,
                fit: BoxFit.cover,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/bookmark_icon.png",
                width: 32.w,
                height: 32.h,
                fit: BoxFit.cover,
              ),
              label: "Bookmark"),
          BottomNavigationBarItem(
            icon: ClipOval(
              child:  Image.asset(
                "assets/images/user.png",
                width: 32.w,
                height: 32.h,
                fit: BoxFit.cover,
              ),
            ),
            label: "Profile",
          ),
        ]));
  }
}
