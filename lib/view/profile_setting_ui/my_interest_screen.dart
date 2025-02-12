import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/custom_text_field.dart';
import 'package:scout_app/utils/custom_app_bar.dart';
import 'package:scout_app/utils/primary_button.dart';
import 'package:scout_app/view/profile_setting_ui/widgets/styles.dart';

class MyInterestScreen extends StatelessWidget {
  const MyInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(title: "My Interests"),
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Search", ImageIcon(AssetImage("assets/icons/search.png"),size: 24,))
              ),
              SizedBox(height: 20.h,),

              Spacer(),
              SizedBox(height: 20.h,),
              TextButton(onPressed: (){}, child: Text("Cancel",style: Theme.of(context).textTheme.bodyLarge,)),
              SizedBox(height: 12.h,),
              Spacer(),
              PrimaryButton(text: "Save",
                color: Color(0xFFFB6012),
                textColor: Colors.white,
                borderRadius:4,
                onPressed: (){},
              ),
              SizedBox(height: 16.h,),
              TextButton(onPressed: (){}, child: Text("Cancel",style: Theme.of(context).textTheme.bodyLarge,)),
              SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
