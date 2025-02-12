import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaCard extends StatelessWidget {
   const SocialMediaCard({
    super.key, required this.imagePath, required this.title, required this.onTap,
  });

  final String imagePath;
  final String title;
  final  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: Color(0xFF9BA2A7))
        ),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(imagePath),
              size: 24,
            ),
            SizedBox(width: 8.w,),
            Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Color(0xFF4B5155),
              fontWeight: FontWeight.w200
            ),),
          ],
        ),
      ),
    );
  }
}