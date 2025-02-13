import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/input_decoration.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 44,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: TextFormField(
              decoration: inputDecoration(
                context,
                hinText: 'Search for friends or events',
                suffixIcon: Icons.search,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7.w,
                  mainAxisSpacing: 2.h,
                  childAspectRatio:
                      0.8, // Adjust aspect ratio to fit image & text
                ),
                itemCount: 10, // Change this based on dynamic data
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10), // Apply rounded corners
                        child: Image.asset(
                          "assets/images/event/event.png",
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit
                              .cover, // Ensures the image covers the full container
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 70,
                          child: Text(
                            "data",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
