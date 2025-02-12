import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/primary_button.dart';
import '../../../utils/custom_header.dart';
import '../../../utils/custom_text_field.dart';

class EventTagsScreen extends StatelessWidget {
  const EventTagsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            CustomHeader(title: "Tags"),
            SizedBox(height: 34.h),
            SizedBox(
              height: 48.h,
              child: CustomTextField(
                hintText: "Search",
                onTap: () {},
                suffix: Icons.search, // Fixed: Use an Icon widget
              ),
            ),
            SizedBox(height: 16.h),
            Wrap(
              runSpacing: 9,
              spacing: 9,
              children: [
                _buildTag("Festival"),
                _buildTag("Food"),
                _buildTag("Wine"),
                _buildTag("Sports"),
                _buildTag("Literature"),
                _buildTag("Concerts"),
                _buildTag("Nightlife"),
                _buildTag("Music"),
                _buildTag("Film"),
                _buildTag("Outdoor"),
                _buildTag("Tech"),
                _buildTag("Art"),
                _buildTag("Fundraising"),
              ],
            ),
            SizedBox(
              height: 200.h,
            ),
            PrimaryButton(text: "Update", onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4), // Background color
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        label,
        style: TextStyle(
            color: Color(0xff000000),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
