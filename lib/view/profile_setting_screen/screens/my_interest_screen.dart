import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/custom_text_field.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/styles.dart';

import '../../../widgets/primary_button.dart';

class MyInterestScreen extends StatelessWidget {
   MyInterestScreen({super.key});

  List<String> interestTag = ["Festival","Food","Wine","Sports","Literature","Concerts",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  customAppBar(context, "My Interests"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Search", ImageIcon(AssetImage("assets/icons/search.png"),size: 24,))
              ),
              SizedBox(height: 20.h,),

              // SizedBox(
              //   height: 250,
              //   child: GridView.builder(
              //       itemCount: interestTag.length,
              //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //         maxCrossAxisExtent: 80,  // Adjusting max width for the items
              //         mainAxisSpacing: 10,       // Spacing between rows
              //         crossAxisSpacing: 10,
              //         childAspectRatio:4// Spacing between columns
              //       ),
              //       itemBuilder: (context,index){
              //         return Container(
              //           padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),  // Padding for better content spacing
              //           decoration: BoxDecoration(
              //             color: Color(0xFFF4F4F4),
              //             borderRadius: BorderRadius.circular(4),
              //             border: Border.all(color: Colors.grey, width: 0.5),  // Optional border for better visibility
              //           ),
              //           child: Align(
              //             alignment: Alignment.center,  // Center the text within the container
              //             child: Text(
              //               interestTag[index],
              //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //                 fontWeight: FontWeight.w400,
              //                 fontSize: 14,  // You can adjust the font size here if needed
              //               ),
              //             ),
              //           ),
              //         );;
              //       }
              //   ),
              // ),

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
