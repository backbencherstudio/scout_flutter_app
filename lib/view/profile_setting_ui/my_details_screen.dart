import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/custom_text_field.dart';
import 'package:scout_app/utils/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_ui/widgets/styles.dart';

class MyDetailsScreen extends StatelessWidget {
  const MyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(title: "My Details"),
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Full Name", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "Username", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "Email Address", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                maxLines: 3,
                  decoration: textFieldDecoration(context, "Bio", null)
              ),
              Spacer(),
              SizedBox(height: 20.h,),
              TextButton(onPressed: (){}, child: Text("Cancel",style: Theme.of(context).textTheme.bodyLarge,)),
              SizedBox(height: 12.h,),
            ],
          ),
        ),
      ),
    );
  }
}
