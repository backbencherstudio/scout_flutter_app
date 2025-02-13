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
        body: Container(
          child: Text("bottom navbar"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 32,
                color: Color(0xFF111315),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 32,
                color: Color(0xFF111315),
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_sharp,
                size: 32,
                color: Color(0xFF111315),
              ),
              label: "Bookmark"),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "assets/images/user.png",
                  ),
                ),
              ],
            ),
            label: "Profile",
          ),
        ]));
  }
}
