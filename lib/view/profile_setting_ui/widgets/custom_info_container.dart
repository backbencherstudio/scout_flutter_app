import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({
    super.key, required this.imagePath, required this.title, required this.onTap,
  });

  final String imagePath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(imagePath),
            size: 24,
          ),
          SizedBox(width: 8.w,),
          Text(title,style: Theme.of(context).textTheme.bodyMedium,),
          Spacer(),
          IconButton(
            onPressed: onTap,
            icon: Icon(Icons.arrow_forward_ios,color: Color(0xFF111315),),
          )
        ],
      ),
    );
  }
}