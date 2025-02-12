import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/custom_header.dart';
import 'package:scout_app/utils/custom_text_field.dart';
import 'package:scout_app/utils/primary_button.dart';

class EventActivities extends StatelessWidget {
  const EventActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomHeader(title: "Event activities"),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),

            ),

            child: Column(
              children: [
                CustomTextField(
                  onTap: () {},
                  label: "Activity name",
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "Start time",
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "End time",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, size: 24.sp, color: Color(0xffF04438)),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Delete",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xffF04438),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffF04438),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 8.h,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(
                  20.r
              ),

            ),

            child: Column(
              children: [
                CustomTextField(
                  onTap: () {},
                  label: "Activity name",
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "Start time",
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "End time",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, size: 24.sp, color: Color(0xffF04438)),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Delete",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xffF04438),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffF04438),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 8.h,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 20),

            width: double.infinity,

            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(
              20.r
              ),

            ),

            child: Column(
              children: [
                CustomTextField(
                  onTap: () {},
                  label: "Activity name",
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "Start time",
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Flexible(
                      child: CustomTextField(
                        onTap: () {},
                        label: "End time",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, size: 24.sp, color: Color(0xffF04438)),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Delete",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Color(0xffF04438),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffF04438),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    )
                  ],
                ),
                SizedBox(height: 16.h,),
                PrimaryButton(text: "Update", onPressed: (){})
              ],
            ),
          ),


        ],
      ),
    );
  }
}
