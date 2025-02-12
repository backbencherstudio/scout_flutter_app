import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/event_create_screen/widget/age_restrictions.dart';
import 'package:scout_app/view/event_create_screen/widget/event_activities.dart';
import 'package:scout_app/view/event_create_screen/widget/event_extras_screen.dart';
import 'package:scout_app/view/event_create_screen/widget/event_tags_widget.dart';
import 'package:scout_app/view/event_create_screen/widget/event_visibility_screen.dart';

import '../../../utils/custom_dotted_border_input_field.dart';
import '../../../utils/custom_text_field.dart';
import '../../../utils/event_info_container.dart';
import '../../../utils/primary_button.dart';

class EventCreateScreen extends StatelessWidget {
  const EventCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Event information",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Color(0xff000000),
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomDottedBorderInputField(
              imagePath: 'assets/icons/file_upload.png',
              label: 'Event artwork (optional)',
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              label: "Event name",
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              label: "Date",
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              label: "End date (optional)",
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Flexible(
                    child: CustomTextField(
                      label: "End time",
                      onTap: () {},
                    )),
                SizedBox(
                  width: 9.w,
                ),
                Flexible(
                    child: CustomTextField(
                      label: "End time",
                      onTap: () {},
                    )),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(label: "Description", onTap: () {}, maxLine: 6),
            SizedBox(
              height: 16.h,
            ),
            EventInfoContainer(
              imagePath: '',
              title: 'Tickets',
              onTap: () {},
            ),
            SizedBox(
              height: 16.h,
            ),
            EventInfoContainer(
              imagePath: '',
              title: 'Tags',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventTagsScreen(), // Remove curly braces
                  ),
                );

              },
            ),
            SizedBox(
              height: 16.h,
            ),

            EventInfoContainer(
              imagePath: '',
              title: 'Event activities',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventActivities(), // Remove curly braces
                  ),
                );
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            EventInfoContainer(
              imagePath: '',
              title: 'Age restrictions',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgeRestrictions(), // Remove curly braces
                  ),
                );
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            EventInfoContainer(
              imagePath: '',
              title: 'Extras',
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventExtrasScreen(), // Remove curly braces
                  ),
                );
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            EventInfoContainer(
              imagePath: '',
              title: 'Event visibility',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventVisibilityScreen(), // Remove curly braces
                  ),
                );
              },
            ),
            SizedBox(
              height: 48.h,
            ),
            PrimaryButton(
              text: 'Create event',
              onPressed: () {},
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16.sp,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600),
                ))
          ],
        ),
      ),
    );
  }
}
