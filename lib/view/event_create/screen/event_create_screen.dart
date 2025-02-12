import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/custom_dotted_border_input_field.dart';

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

  body: ListView(
    children: [
      CustomDottedBorder(imagePath: '', label: 'name', onTap: () {  },),

    ],
  ),


    );
  }
}
