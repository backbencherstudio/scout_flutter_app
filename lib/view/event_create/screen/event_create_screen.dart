import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/custom_dotted_border_input_field.dart';
import '../../../utils/custom_text_field.dart';

class EventCreateScreen extends StatelessWidget {
  const EventCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:   Text("Event information",style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Color(0xff000000),
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
          fontStyle: FontStyle.normal
      ),),),

  body: Padding(
    padding: EdgeInsets.symmetric(horizontal:24.w ),
    child: ListView(
      children: [
        SizedBox(height: 20.h,),
        CustomDottedBorderInputField(imagePath: 'assets/icons/file_upload.png', label: 'Event artwork (optional)', onTap: () {  },),
        SizedBox(height: 16.h,),
        CustomTextField(label:"Event name", onTap: () {  },),
        SizedBox(height: 16.h,),
        CustomTextField(label:"Date", onTap: () {  },),
        SizedBox(height: 16.h,),

        CustomTextField(label:"End date (optional)", onTap: () {  },),
        SizedBox(height: 16.h,),

        Row(

          children: [
            Flexible(child: CustomTextField(label:"Start time", onTap: () {  },)),
           SizedBox(width:9.w ,),
            Flexible(child: CustomTextField(label:"End time", onTap: () {  },)),

          ],
        ),


        SizedBox(height: 16.h,),

        CustomTextField(label:"Location", onTap: () {  },),
        SizedBox(height: 16.h,),


      ],
    ),
  ),


    );
  }
}
