import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              leading: Icon(
                Icons.arrow_back_ios,
                color: Color(
                  0xFF111315,
                ),
              ),
              title: Text("Account Settings"),
            )
          ],
        ),
      ),
    );
  }
}
