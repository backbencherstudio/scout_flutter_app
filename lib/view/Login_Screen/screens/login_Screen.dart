import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/Login_Screen/screens/GlassBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login/loginpic.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              Center(
                child: Image.asset(
                  "assets/login/primelogo.png",
                  width: 138.w,
                  height: 36.h,
                ),
              ),
              SizedBox(
                height: 295,
              ),
              Expanded(child: Glassbox()),
            ],
          ),
        ),
      ),
    );
  }
}
